# frozen_string_literal: true

module Api
  module V1
    class WeathersController
      class Index
        include Interactor::Organizer

        INTERACTORS = [
          FetchCityIds,
          RequestWeatherData,
          SerializeResponse,
          RecordRequest
        ].freeze

        organize INTERACTORS
      end
    end
  end
end
