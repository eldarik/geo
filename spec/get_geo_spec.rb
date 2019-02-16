describe GetGeo do
  it do
    is_asserted_by { GetGeo::VERSION != nil }
  end

  describe 'class methods' do
    let!(:response) { double }
    let!(:data) do
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
    let!(:response_data) { data.to_json }
    before do
      expect(OpenURI).to receive(:open_uri).and_return(response)
      expect(response).to receive(:read).and_return(response_data)
    end

    it_is_asserted_by { described_class.get_data.class == GetGeo::Data }
  end
end
