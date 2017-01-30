require 'docking_station'
require 'support/bike_container_shared_examples'

describe DockingStation do

  let(:bike) {double :bike}

  before :each do
    allow(bike).to receive(:broken?).and_return(false)
  end

it_behaves_like BikeContainer

it 'has a default capacity of 20 bikes' do
  station = DockingStation.new
  expect(station.capacity).to eq DockingStation::DEFAULT_CAPACITY
end

it 'allows the capacity of bikes to be changed by admin' do
  station = DockingStation.new(50)
  expect(station.capacity).to eq 50
end

  describe '#release_bike' do

    it {is_expected.to respond_to :release_bike}

    it 'releases a bike' do
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'docking station should release a new bike' do
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'is expected that the new bike should be working' do
      subject.dock(bike)
      expect(bike).not_to be_broken
    end

    it "a broken bike will not be released" do
      bike = double(:bike, broken?: true)
      subject.dock(bike)
      expect{subject.release_bike}.to raise_error "No bikes available"
    end

    it 'doesn\'t release bikes if there aren\'t any at the docking station' do
      station = DockingStation.new
      DockingStation::DEFAULT_CAPACITY.times {station.dock Bike.new}
      DockingStation::DEFAULT_CAPACITY.times {station.release_bike}
      expect{subject.release_bike}.to raise_error "No bikes available"
    end

  end

  describe '#dock' do

    it {is_expected.to respond_to(:dock).with(1).argument}

    it "will not dock a bike if the station is full" do
      station = DockingStation.new
      subject.capacity.times {station.dock Bike.new}
      expect{station.dock(bike)}.to raise_error "DockingStation is full; no room at the inn!"
    end

  end

end
