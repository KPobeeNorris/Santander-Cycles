class Garage

  def initialize(capacity=20)
    @capacity = capacity
    @bikes = []
    @broken_bikes = []
  end

  def repair_bikes
    bikes.each {|bike| bike.fixed}
  end

end
