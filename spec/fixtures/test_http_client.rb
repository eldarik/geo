module TestHTTPClient
  def self.open_uri(url)
    StringIO.new(
      {
        "as": "AS4134 No.31,Jin-rong Street",
        "city": "Guangzhou",
        "country": "China",
        "countryCode": "CN",
        "isp": "Chinanet",
        "lat": 23.1322,
        "lon": 113.267,
        "org": "Chinanet GD",
        "query": "183.3.4.1",
        "region": "GD",
        "regionName": "Guangdong",
        "status": "success",
        "timezone": "Asia/Shanghai",
        "zip": ""
      }.to_json
    )
  end
end
