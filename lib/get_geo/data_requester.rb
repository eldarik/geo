require 'open-uri'
require 'json'

class GetGeo::DataRequester
  BASE_URL = 'http://ip-api.com/json'

  def execute(ip = nil)
    url = BASE_URL
    url = "#{url}/#{ip}" if ip
    response_body = OpenURI.open_uri(url).read
    JSON.parse(response_body).transform_keys(&:to_sym)
  end
end
