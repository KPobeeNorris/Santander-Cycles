require_relative 'bike'
require_relative 'van'
require_relative 'garage'

class DockingStation

  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise 'No bikes available' if empty?
    raise "No working bikes available" if bikes.all?{|bike| bike.broken?}
    bikes.pop
  end

  def dock(bike)
    raise 'Docking station is full, unable to dock your bike' if full?
    
    bikes << bike
  end

  private

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end

end
