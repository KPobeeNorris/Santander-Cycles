require 'bike_container'
require 'support/bike_container_shared_examples'

class BikeContainerExample
  include BikeContainer
end


describe BikeContainerExample do
  it_behaves_like BikeContainer
end
