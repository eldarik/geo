require 'geo'

module Geo
  module CLI
    def self.start(ip)
      geo_data = ::Geo.get_data(ip)
      Geo::Printer::CLI.new(geo_data).print
    end
  end
end
