require 'geo'

module Geo
  module CLI
    def self.start(ip)
      geo_data = ::Geo.get_data_by_ip(ip)
      Geo::Printer::CLI.new(geo_data).print
    end
  end
end
