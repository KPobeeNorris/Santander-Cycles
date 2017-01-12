require 'docking_station'

describe DockingStation do

it {is_expected.to respond_to :release_bike}

it 'docking station should release a new bike' do
  station = DockingStation.new
  expect(station.release_bike).not_to eq nil
end

it 'is expected that the bike should be working' do
  bike = subject.release_bike
  expect(bike).to be_working
end

end
