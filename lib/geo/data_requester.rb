module Geo::DataRequester
  BASE_URL = 'http://ip-api.com/json'

  def self.execute(ip, http_client)
    url = BASE_URL
    url = "#{url}/#{ip}" if ip
    url = URI.parse(url)
    response_body = http_client.open_uri(url).read
    JSON.parse(response_body).transform_keys(&:to_sym)
  end
end
