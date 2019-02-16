require 'get_geo/cli'

describe GetGeo::CLI do
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

  describe 'class methods' do
    describe '.start' do
      subject { described_class.start(nil) }
      before do
        expect(GetGeo).to receive(:get_data).and_return(data)
      end

      it 'print formatted string to stdout' do
        expect { subject }.to output(
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
