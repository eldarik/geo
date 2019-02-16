require 'get_geo/data'

describe GetGeo::Data do
  describe 'class methods' do
    describe '.new' do
      let!(:args) { { city: 'City' } }
      subject { described_class.new(args) }

      it 'initialize new object' do
        expect(subject).not_to be_nil
      end
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
      it { expect(subject.city).to eq(args[:city]) }
    end

    describe 'has country' do
      it { expect(subject.country).to eq(args[:country]) }
    end

    describe 'has lat' do
      it { expect(subject.lat).to eq(args[:lat]) }
    end

    describe 'has lon' do
      it { expect(subject.lon).to eq(args[:lon]) }
    end

    describe 'has query' do
      it { expect(subject.query).to eq(args[:query]) }
    end
  end
end
