class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def get_bike
    Bike.new
  end

  def release_bike
    raise "No bikes available." if empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise "Dock at capacity." if full?
    @bikes << bike
  end

  private
    def full?
      @bikes.length > 19
    end

    def empty?
      @bikes.empty?
    end
end
