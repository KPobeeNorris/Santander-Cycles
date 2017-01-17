require_relative 'bike'

class DockingStation

  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'Docking station is full, unable to dock your bike' if full?
    @bikes << bike
  end


  private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
