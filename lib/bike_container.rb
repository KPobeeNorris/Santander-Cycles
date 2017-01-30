module BikeContainer

  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def add_bike(bike)
    raise "#{self.class.name} is full; no room at the inn!" if full?
    bikes << bike
  end

  def empty?
    bikes.empty?
  end

  def full?
    bikes.length >= capacity
  end

  private

  attr_reader :bikes

end
