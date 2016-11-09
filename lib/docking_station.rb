class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def get_bike
    Bike.new
  end

  def release_bike
    raise "No bikes available." if bikes.empty?
  end

  def dock_bike(bike)
    @bikes << bike
  end
end
