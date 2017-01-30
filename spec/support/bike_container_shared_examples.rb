shared_examples_for BikeContainer do
  it 'has a default capacity when initialized' do
    expect(subject.capacity).to eq BikeContainer::DEFAULT_CAPACITY
  end

  describe 'capacity' do
    it 'allows for the default capacity to be changed by admin' do
      new_capacity = 30
      subject = described_class.new new_capacity
      expect(subject.capacity).to eq new_capacity
    end
  end

  describe 'add_bike' do
    it 'is able to receive a bike' do
      subject.add_bike double :bike
      expect(subject).not_to be_empty
    end

    it 'raises an error when at capacity' do
      subject.capacity.times {subject.add_bike double(:bike)}
      expect {subject.add_bike double(:bike)}.to raise_error "#{described_class.name} is full; no room at the inn!"
    end
  end

  describe 'remove_bike' do
    let(:bike) {Bike.new}
    before(:each) {subject.add_bike bike}

    it 'returns a bike' do
      expect(subject.remove_bike).to eq bike
    end

    it 'removes a bike from storage' do
      subject.remove_bike
      expect(subject).to be_empty
    end

    it 'raises an error when the storage is empty' do
      subject.remove_bike
      expect {subject.remove_bike}.to raise_error "#{described_class.name} is empty; unable to release a bike at this time!"
    end
  end

end
