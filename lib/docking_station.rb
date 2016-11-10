class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise "No bikes available." if empty?
    @bikes.pop if @bikes[-1].working?
  end

  def dock_bike(bike)
    raise "Dock at capacity." if full?
    @bikes << bike
  end

  private
    def full?
      @bikes.length >= @capacity
    end

    def empty?
      @bikes.empty?
    end
end
