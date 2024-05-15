# frozen_string_literal: true

class ReservamosClient
  include HTTParty
  BASE_PATH = ENV.fetch('RESERVAMOS_API_CLIENT', 'https://search.reservamos.mx')
  ONLY_SHOW = %w[id lat long city_slug display city_name state country].freeze

  def self.cities_coordinates(city_name)
    response = get("#{BASE_PATH}/api/v2/places?q=#{city_name}")

    if response.success?
      cities = response.map do |city|
        # Select only some keys to reduce the endpoint final response
        city.slice(*ONLY_SHOW).compact
      end

      return cities.reject { |el| el == {} }
    end

    nil
  end
end
