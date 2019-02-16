require 'geo/version'
require 'geo/data'
require 'geo/printer'
require 'geo/printer/cli'
require 'geo/data_requester'
require 'open-uri'
require 'json'

module Geo
  class Error < StandardError; end

  def self.get_data(ip = nil, http_client = OpenURI)
    data = ::Geo::DataRequester.execute(ip, http_client)
    ::Geo::Data.new(data)
  end
end
