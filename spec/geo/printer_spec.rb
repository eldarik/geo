describe Geo::Printer do
  describe 'class methods' do
    let!(:data) do
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

    describe '.print' do
      before  do
        @result =
          <<~HEREDOC
            --- Geo ---
            city: #{data['city']}
            country: #{data['country']}
            lat: #{data['lat']}
            lon: #{data['lon']}
            query: #{data['query']}
          HEREDOC
      end

      it 'returns formatted string' do
        is_asserted_by { subject.print(data) == @result }
      end
    end
  end
end
