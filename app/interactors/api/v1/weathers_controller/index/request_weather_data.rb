# frozen_string_literal: true

module Api
  module V1
    class WeathersController
      class Index
        class RequestWeatherData
          include Interactor

          def call
            context.response_body = response_body
          end

          private

          def response_body
            @response_body ||= begin
              Rails.cache.fetch(cache_key) do
                WeatherApi::Client
                  .new(city_ids: context.city_ids)
                  .call
                  .body
              end
            end
          end

          def cache_key
            context.session['session_id'] + context.city_ids
          end
        end
      end
    end
  end
end
