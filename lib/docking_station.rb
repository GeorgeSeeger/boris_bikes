

class DockingStation

  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = Array.new(0)
  end

  def release_bike
    fail "Rack is empty" if empty?
    @bikes.pop if @bikes[-1].working?
  end

  def return_bike(bike)
    fail "Rack is full" if full?
    @bikes.push bike
  end

  private
  def full?
     @bikes.size >= @capacity
  end

  def empty?
    @bikes.empty?
  end


end
