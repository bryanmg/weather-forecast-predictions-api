# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'up' => 'rails/health#show', as: :rails_health_check

  scope '/api/v1', defaults: { format: :json } do
    get '/weather_forecasts', to: 'weather_forecast#index'
  end
end
