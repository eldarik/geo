require 'get_geo'

module GetGeo
  module CLI
    def self.start(ip)
      geo_data = ::GetGeo.get_data(ip)
      GetGeo::Printer::CLI.new(geo_data).print
    end
  end
end
