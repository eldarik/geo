class Geo::Data
  attr_reader :city, :country, :lat, :lon, :query

  def initialize(args)
    @city = args[:city]
    @country = args[:country]
    @lat = args[:lat]
    @lon = args[:lon]
    @query = args[:query]
  end
end
