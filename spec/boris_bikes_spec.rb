require "boris_bikes"

describe DockingStation do
  dock = DockingStation.new
  it "should return a new DockingStation object" do

    expect(dock.instance_of?(DockingStation)).to be_truthy
  end

  it "should respond to release_bike method" do expect(dock).to respond_to(:release_bike) end


end
