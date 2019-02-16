require 'geo/printer'

module Geo
  module CLI
    def self.start(ip, geo)
      geo_data = geo.get_data_by_ip(ip)
      puts ::Geo::Printer.print(geo_data)
    end
  end
end
