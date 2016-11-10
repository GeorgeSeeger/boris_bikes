require 'docking_station.rb'
require 'bike_container.rb'

class Van
  include BikeContainer
  # attr_reader :bikes

  def initialize
    @bikes = []
  end

  def collect_bikes(target)
    is_dock = target.instance_of?(DockingStation)
    target.bikes.each.with_index {|bike, index|
      if bike.working? ^ is_dock
        @bikes << bike
        target.bikes.delete_at(index)
        index -= 1
      end
    }
  end

  def deliver_bikes(target)
    is_dock = target.instance_of?(DockingStation)
    @bikes.each {|bike|
      if bike.working? == is_dock
         target.dock_bike(bike)
      end
    }
  end

end
