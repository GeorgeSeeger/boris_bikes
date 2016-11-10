require 'docking_station'

class Garage < DockingStation

  def initialize
    super # @bikes = []
    @capacity = Float::INFINITY
  end

end
