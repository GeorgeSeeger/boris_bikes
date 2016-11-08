class DockingStation

  attr_reader :bike_count, :bikes

  def initialize
    @bikes = Array.new(20){ Bike.new }
    @bike_count = @bikes.size
  end

  def release_bike number = 1
    fail "Fail" if @bike_count < number
    @bike_count -= number
    (number -1 ).times{ @bikes.pop }
    @bikes.pop
  end

  def dock_bike bike
    fail "Fail" if @bike_count >= 20
    @bike_count += 1
    if bike.instance_of?(Bike) then @bikes << bike
    else raise "Not a bike argument" end
    return nil
  end

end

class Bike

  def working?
    1
  end

end
