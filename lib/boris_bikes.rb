class DockingStation

  attr_reader :bike_count

  def initialize
    @bike_count = 10
  end

  def release_bike
    @bike_count -= 1
    Bike.new
  end

  def dock_bike bike
    @bike_count += 1
    return nil
  end

end

class Bike

  def working?
    1
  end

end
