class Van
  include BikeContainer

  def collect_bike(bike)
    add_bike(bike)
  end

  def release_bike
    fail 'No bikes available' if bikes.empty?
    bikes.delete bikes.pop
  end



end
