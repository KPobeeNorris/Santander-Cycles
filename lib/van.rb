class Van

  attr_reader :capacity

  def initialize(capacity=20)
    @capacity = capacity
    @bikes_in_transport = []
  end

  def collect_bike(location)
    bikes.each{|bike| bikes_in_transport << bike}
  end

  def deliver_bike(location)
    if location == 'garage'
      bikes_in_transport.each{|bike| garage.broken.bikes << bike }
    else
      bikes_in_transport.each{|bike| docking_station.bikes << bike }
    end
  end

end
