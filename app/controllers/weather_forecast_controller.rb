# frozen_string_literal: true

require 'open-uri'
require 'json'

class WeatherForecastController < ApplicationController
  before_action :validate_required_params, only: %i[index]

  def index
    # Get city coordinates from Reservamos API
    cities_coordinates = ReservamosClient.cities_coordinates(params[:city_name])

    return failed_to_fetch_weather_data if cities_coordinates.empty?

    # Fetch weather forecast from OpenWeather API
    forecast_data = OpenWeathermapClient.forecast_for_cities(cities_coordinates)

    return failed_to_fetc_forecast_data if forecast_data.empty?

    render json: { result: forecast_data }, status: :ok
  end

  private

  def failed_to_fetch_weather_data
    render json: { error: 'Failed to fetch weather data' }, status: :unprocessable_entity
  end

  def failed_to_fetc_forecast_data
    render json: { error: 'Failed to fetch forecast data' }, status: :unprocessable_entity
  end

  def validate_required_params
    params.require([:city_name])
  rescue ActionController::ParameterMissing
    render json: { message: 'Parameters missing' }, status: :bad_request
  end
end
