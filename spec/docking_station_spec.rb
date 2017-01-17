require 'docking_station'

describe DockingStation do

it {is_expected.to respond_to :release_bike}

it {is_expected.to respond_to(:dock).with(1).argument}

it {is_expected.to respond_to :bike}

it 'docking station should release a new bike' do
  station = DockingStation.new
  expect(station.release_bike).not_to eq nil
end

it 'is expected that the bike should be working' do
  bike = subject.release_bike
  expect(bike).to be_working
end

it 'docks a bike' do
  bike = Bike.new
  subject.dock(bike)
  expect(subject.bike).to eq bike
end

end
