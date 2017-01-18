require 'docking_station'

describe DockingStation do

it {is_expected.to respond_to :release_bike}

it {is_expected.to respond_to(:dock).with(1).argument}

it {is_expected.to respond_to :bikes}

it 'docking station should release a new bike' do
  bike = Bike.new
  subject.dock(bike)
  expect(subject.release_bike).not_to eq nil
end

it 'is expected that the bike should be working' do
  bike = Bike.new
  subject.dock(bike)
  expect(bike).not_to be_broken
end

it 'has a default capacity of 20 bikes' do
  station = DockingStation.new
  expect(station.capacity).to eq DockingStation::DEFAULT_CAPACITY
end

it 'allows the capacity of bikes to be changed by admin' do
  station = DockingStation.new(50)
  expect(station.capacity).to eq 50
end

  describe '#release_bike' do

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "a broken bike will not be released" do
      bike = Bike.new
      subject.dock(bike)
      subject.release_bike
      bike.report_broken
      subject.dock(bike)
      expect{subject.release_bike}.to raise_error "No working bikes available"
    end

    it 'doesn\'t release bikes if there aren\'t any at the docking station' do
      station = DockingStation.new
      DockingStation::DEFAULT_CAPACITY.times {station.dock Bike.new}
      DockingStation::DEFAULT_CAPACITY.times {station.release_bike}
      expect{subject.release_bike}.to raise_error "No bikes available"
    end

  end

  describe '#dock' do

    it 'docks a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end

    it "will not dock a bike if the station is full" do
      station = DockingStation.new
      DockingStation::DEFAULT_CAPACITY.times {station.dock Bike.new}
      expect{station.dock Bike.new}.to raise_error "Docking station is full, unable to dock your bike"
    end

    it "allows a customer to report that a bike is broken" do

    end

  end


end
