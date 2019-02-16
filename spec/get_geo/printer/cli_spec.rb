describe GetGeo::Printer::CLI do
  let!(:data) do
    GetGeo::Data.new(
      {
        city: 'City',
        country: 'Country',
        lat: '56.5',
        lon: '56.6',
        query: '127.0.0.1'
      }
    )
  end

  describe 'instance methods' do
    describe '.print' do
      subject { described_class.new(data) }

      it 'returns string with formatted data' do
        expect { subject.print }.to output(
          <<~HEREDOC
            --- GetGeo ---
            city: #{data.city}
            country: #{data.country}
            lat: #{data.lat}
            lon: #{data.lon}
            query: #{data.query}
          HEREDOC
        ).to_stdout
      end
    end
  end
end
