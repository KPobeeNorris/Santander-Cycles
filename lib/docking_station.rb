require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    # station = DockingStation.new
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
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end

end
