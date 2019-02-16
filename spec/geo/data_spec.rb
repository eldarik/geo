describe Geo::Data do
  describe 'class methods' do
    describe '.new' do
      let!(:args) { { city: 'City' } }
      subject { described_class.new(args) }

      it_is_asserted_by { subject != nil }
    end
  end

  describe 'attributes' do
    let!(:args) do
      {
        city: 'City',
        country: 'Country',
        lat: '56.5',
        lon: '56.6',
        query: '127.0.0.1'
      }
    end
    subject { described_class.new(args) }

    describe 'has city' do
      it_is_asserted_by { subject.city == args[:city] }
    end

    describe 'has country' do
      it_is_asserted_by { subject.country == args[:country] }
    end

    describe 'has lat' do
      it_is_asserted_by { subject.lat == args[:lat] }
    end

    describe 'has lon' do
      it_is_asserted_by { subject.lon == args[:lon] }
    end

    describe 'has query' do
      it_is_asserted_by { subject.query == args[:query] }
    end
  end
end
