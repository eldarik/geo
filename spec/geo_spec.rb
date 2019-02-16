describe Geo do
  it do
    is_asserted_by { Geo::VERSION != nil }
  end

  describe 'class methods' do
    let!(:http_client) { TestHTTPClient }
    let!(:expected) do
      {
        "as" => "AS4134 No.31,Jin-rong Street",
        "city" => "Guangzhou",
        "country" => "China",
        "countryCode" => "CN",
        "isp" => "Chinanet",
        "lat" => 23.1322,
        "lon" => 113.267,
        "org" => "Chinanet GD",
        "query" => "183.3.4.1",
        "region" => "GD",
        "regionName" => "Guangdong",
        "status" => "success",
        "timezone" => "Asia/Shanghai",
        "zip" => ""
      }
    end
    let!(:ip) { '123.123.123.123' }

    it_is_asserted_by do
      described_class.get_data_by_ip(ip, http_client) == expected
    end
  end
end
