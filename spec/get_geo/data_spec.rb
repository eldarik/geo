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

  describe 'instance methods' do
    let!(:args) do
      {
        city: 'City',
        country: 'Country',
        lat: '56.5',
        lon: '56.6'
      }
    end
    subject { described_class.new(args) }

    describe 'has attributes' do
      it { expect(subject.city).to eq(args[:city]) }

      it { expect(subject.country).to eq(args[:country]) }

      it { expect(subject.lat).to eq(args[:lat]) }

      it { expect(subject.lon).to eq(args[:lon]) }
    end
  end
end
