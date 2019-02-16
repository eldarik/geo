require 'geo/cli'

describe Geo::CLI do
  let!(:http_client) { TestHTTPClient }

  describe 'class methods' do
    describe '.start' do
      subject { described_class.start(nil, http_client) }

      it 'print formatted string to stdout' do
        expect { subject }.to output(
          <<~HEREDOC
            --- Geo ---
            city: Guangzhou
            country: China
            lat: 23.1322
            lon: 113.267
            query: 183.3.4.1
          HEREDOC
        ).to_stdout
      end
    end
  end
end
