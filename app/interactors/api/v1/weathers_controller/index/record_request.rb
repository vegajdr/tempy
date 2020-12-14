# frozen_string_literal: true

module Api
  module V1
    class WeathersController
      class Index
        class RecordRequest
          include Interactor

          def call
            ::Session
              .find_or_create_by!(session_id: context.session['session_id'])
              .requests
              .create!(
                payload: context.serialized_response
              )
          end
        end
      end
    end
  end
end
