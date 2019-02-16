require 'geo/version'
require 'geo/http_client'
require 'open-uri'
require 'json'

module Geo
  class Error < StandardError; end
  BASE_URL = 'http://ip-api.com/json/'

  def self.get_data_by_ip(ip = nil, http_client = Geo::HttpClient)
    url = URI.parse("#{BASE_URL}/#{ip}")
    response = http_client.get(url)
    JSON.parse(response)
  end
end
