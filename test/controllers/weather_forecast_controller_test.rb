# frozen_string_literal: true

require 'test_helper'

class WeatherForecastControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get weather_forecasts_url(city_name: 'Monterrey')

    assert_response :success
  end

  test 'should receive a city name and return the forecast' do
    get weather_forecasts_url(city_name: 'monterrey')

    assert_response :success
    data = JSON.parse(response.body)
    refute data['result'].empty?
  end

  test 'should return and error if any param is missing' do
    get weather_forecasts_url

    assert_response :bad_request
  end

  test 'should return empty for unexisting city name' do
    get weather_forecasts_url(city_name: 'ThiCityNotExist')

    assert_response :unprocessable_entity
  end
end
