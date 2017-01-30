require 'garage'
require 'support/bike_container_shared_examples'

describe Garage do

  it_behaves_like BikeContainer

  it "can repair broken bikes" do
    bike = double :bike, fixed: nil, broken?: false
   subject.add_bike bike
   subject.repair_bikes
   expect(bike).not_to be_broken
  end

end
