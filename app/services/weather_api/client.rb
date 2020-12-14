# frozen_string_literal: true

module WeatherApi
  class Client
    URL = 'http://api.openweathermap.org/data/2.5/group'
    APP_ID = '1cded9c207985288a29440ce713da957'

    def initialize(client: Faraday, city_ids:, api_key: APP_ID)
      @api_key = api_key
      @client = client
      @city_ids = city_ids
    end

    def call
      client.get(URL, id: city_ids, appid: api_key)
    end

    private

    attr_reader :client,
                :city_ids,
                :api_key
  end
end
