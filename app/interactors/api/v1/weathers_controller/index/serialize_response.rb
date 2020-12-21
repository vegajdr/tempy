# frozen_string_literal: true

module Api
  module V1
    class WeathersController
      class Index
        class SerializeResponse
          include Interactor

          def call
            context.serialized_response = serialized_response
          end

          def response_body
            context.response_body
          end

          def parsed_response
            JSON.parse(response_body)
          end

          def serialized_response
            {
              cities: list,
              highest: highest,
              lowest: lowest
            }
          end

          def list
            @list ||= begin
              parsed_response['list']
                .map do |city_weather|
                  {
                    name: city_weather['name'],
                    temperature: public_send(unit_conversion, city_weather['main']['temp'])
                  }
                end
            end
          end

          def highest
            sorted_list.first
          end

          def lowest
            sorted_list.last
          end

          def sorted_list
            @sorted_list ||= begin
              list
                .map { |city_weather| CityWeather.new(city_weather) }
                .sort
            end
          end

          def to_fahrenheit(kelvin)
            (kelvin - 273.15) * 9 / 5 + 32
          end

          def to_celcius(kelvin)
            kelvin - 273.15
          end

          def unit_conversion
            context.params[:unit] == 'c' ? :to_celcius : :to_fahrenheit
          end

          class CityWeather
            def initialize(city_weather)
              @name = city_weather[:name]
              @temperature = city_weather[:temperature]
            end

            attr_reader :name,
                        :temperature

            def <=>(other)
              other_temperature = other.temperature
              return name <=> other.name if temperature == other_temperature

              other_temperature <=> temperature
            end
          end
        end
      end
    end
  end
end
