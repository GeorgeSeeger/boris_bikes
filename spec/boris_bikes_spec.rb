require "boris_bikes"

describe "Docking Station" do
  dock = DockingStation.new
  it "should return a new DockingStation object" do

    expect(dock.instance_of?(DockingStation)).to be_truthy
  end

end
