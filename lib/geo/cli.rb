require 'geo'

module Geo
  module CLI
    def self.start(ip, http_client = OpenURI)
      geo_data = ::Geo.get_data_by_ip(ip, http_client)
      Geo::Printer::CLI.new(geo_data).print
    end
  end
end
