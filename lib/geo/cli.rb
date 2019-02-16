require 'geo'
require 'geo/printer'

module Geo
  module CLI
    def self.start(ip, geo)
      geo_data = geo.get_data_by_ip(ip, Geo::HttpClient)
      puts Geo::Printer.print(geo_data)
    end
  end
end
