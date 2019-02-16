require 'geo/version'
require 'geo/http_client'
require 'geo/printer'
require 'open-uri'
require 'json'

module Geo
  class Error < StandardError; end
  BASE_URL = 'http://ip-api.com/json/'

  class Geo
    attr :http_client

    def initialize(http_client = nil)
      @http_client = http_client || ::Geo::HttpClient
    end

    def get_data_by_ip(ip = nil)
      puts http_client
      url = URI.parse("#{BASE_URL}/#{ip}")
      response = http_client.get(url)
      JSON.parse(response)
    end
  end
end
