# frozen_string_literal: true

module Api
  module V1
    class WeathersController < ApplicationController
      def index
        session[:name] = params[:name]
        context = Index.call(params: params, session: session)

        if context.success?
          render json: context.serialized_response
        else
          render json: { error: context.message }, status: :not_acceptable
        end
      end
    end
  end
end
