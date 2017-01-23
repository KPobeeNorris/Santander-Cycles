
class Van

  attr_reader :capacity, :bikes

  def initialize(capacity=20)
    @capacity = capacity
    @bikes = []
  end

  def collect_bike(bike)
    bikes << bike
  end

  def remove_bike(bike)
    bike.pop
  end

end
