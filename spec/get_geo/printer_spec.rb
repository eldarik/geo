describe GetGeo::Printer do
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
    describe '.new' do
      subject { described_class.new(data) }

      it 'initialize new object' do
        is_asserted_by { subject != nil }
      end
    end
  end

  describe 'instance methods' do
    describe '#print' do
      subject { described_class.new(data) }
      before  do
        @result =
          <<~HEREDOC
            --- GetGeo ---
            city: #{data.city}
            country: #{data.country}
            lat: #{data.lat}
            lon: #{data.lon}
            query: #{data.query}
          HEREDOC
      end

      it 'returns formatted string' do
        is_asserted_by { subject.print == @result }
      end
    end
  end
end
