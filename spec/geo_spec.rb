describe Geo do
  it do
    is_asserted_by { Geo::VERSION != nil }
  end

  describe 'class methods' do
    let!(:http_client) { TestHTTPClient }
    let!(:expected) do
      Geo::Data.new(
        {
          city: "Guangzhou",
          country: "China",
          lat: 23.1322,
          lon: 113.267,
          query: "183.3.4.1",
        }
      )
    end
    let!(:ip) { '123.123.123.123' }

    it_is_asserted_by do
      described_class.get_data(ip, http_client).city == expected.city
    end
  end
end
