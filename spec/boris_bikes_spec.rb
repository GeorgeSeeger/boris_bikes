require "boris_bikes"

describe DockingStation do
  dock = DockingStation.new
  it "should return a new DockingStation object" do

    expect(dock.instance_of?(DockingStation)).to eq true
  end

  it "should respond to release_bike method" do

     expect(dock).to respond_to(:release_bike)

   end

   it "should return a Bike object" do
     bike = dock.release_bike
     expect(bike.instance_of?(Bike)).to eq true

   end

end
