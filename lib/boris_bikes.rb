class DockingStation

<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> c04b012ab1fb71831c2415adff9b2d32fbb06805
=======
  attr_reader :bike_count

  def initialize
    @bike_count = 10
  end

>>>>>>> df8c912781df2f66d8661a2c977dfc5d13839efb
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

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 1ccf2b02a7a8f3374a6a84e9de585062e2d6bc43
>>>>>>> c04b012ab1fb71831c2415adff9b2d32fbb06805
=======
>>>>>>> df8c912781df2f66d8661a2c977dfc5d13839efb
end
