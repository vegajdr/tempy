# frozen_string_literal: true

module Api
  module V1
    class WeathersController
      class Index
        class FetchCityIds
          include Interactor

          MAX_CITIES_LIMIT = 10

          def call
            if cities.size > MAX_CITIES_LIMIT
              context.fail!(message: "No more than #{MAX_CITIES_LIMIT} cities are allowed")
            end

            context.city_ids = CityCollection.new(cities).to_ids.join(',')
          end

          private

          def cities
            @cities ||= context.params[:cities]
          end

          class CityCollection
            delegate_missing_to :@cities

            def initialize(cities)
              @cities = cities
            end

            def to_ids
              map(&find_city_data)
                .map(&by_id)
                .sort
            end

            def find_city_data
              proc do |city_name|
                city_list.find do |city_data|
                  city_data['name'] == city_name.split(' ').map(&:capitalize).join(' ')
                end
              end
            end

            def by_id
              proc { |city_data| city_data['id'] }
            end

            def city_list
              @city_list ||= list_source
            end

            def list_source
              @list_source ||= JSON.parse(File.read('sample-cities.json'))
            end
          end
        end
      end
    end
  end
end
