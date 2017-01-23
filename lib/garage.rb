class Garage

  attr_reader :broken_bikes

  def initialize(capacity=20)
    @capacity = capacity
    @bikes = []
  end

  def repair_bikes
    bikes.each {|bike| bike.fixed}
  end

  def add_bike(bike)
    bikes << bike
  end

  def remove_bike(bike)
    bike.pop
  end

end
