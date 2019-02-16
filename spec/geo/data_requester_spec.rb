describe Geo::DataRequester do
  let!(:http_client) { TestHTTPClient }
  describe 'class methods' do
    let!(:ip) { '123.123.123.123' }
    let!(:expected) do
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
      }
    end
    describe '.execute' do
      it_is_asserted_by { described_class.execute(ip, http_client)  == expected }
    end
  end
end
