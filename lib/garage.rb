require 'docking_station.rb'

class Garage < DockingStation

  def initialize
    super # @bikes = []
    @capacity = Float::INFINITY
  end

end
