# frozen_string_literal: true

require './lib/assets/fake_data_open_weather'

class OpenWeathermapClient
  include HTTParty
  BASE_PATH = ENV.fetch('OPEN_WEATHER_FORECAST_API_CLIENT', 'https://api.openweathermap.org')
  API_KEY = ENV.fetch('OPEN_WEATHER_FORECAST_API_KEY', 'example')

  def self.weather_forecast_by_day(_lat, _lon)
    # Switch this 2 lines if you are using a valid API Key
    response = FakeDataOpenWeather.dummy_data
    # response = get("#{BASE_PATH}/data/2.5/onecall?lat=#{_lat}&lon=#{_lon}&exclude=current,minutely,hourly,alerts&appid=#{API_KEY}") # Uncomment this line:

    # if response.success? # Uncomment-this-line: if your are using a valid API KEY
    forecast = response['daily'].map do |data|
      {
        date: Time.at(data['dt'].to_i),
        day_temp: data['temp']['day'],
        day_temp_min: data['temp']['min'],
        day_temp_max: data['temp']['max']
      }.compact
    end

    return forecast
    # end # Uncomment this line: if your are using a valid API KEY

    nil
  end

  def self.forecast_for_cities(cities)
    forecasts = []

    AsyncRequest.request(cities) do |city|
      forecasts << city.merge({ cities_forecast: weather_forecast_by_day(city['lat'], city['long']) })
    end

    forecasts
  end
end
