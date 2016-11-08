require "boris_bikes"

describe DockingStation do
  dock = DockingStation.new
  bike = dock.release_bike
  it "should return a new DockingStation object" do

    expect(dock.instance_of?(DockingStation)).to eq true
  end

  it "should respond to release_bike method" do

     expect(dock).to respond_to(:release_bike)

   end

   it "should return a Bike object" do

     expect(bike.instance_of?(Bike)).to eq true

   end

   it "should accept a bike into the Docking Station" do

     expect(dock).to respond_to(:dock_bike).with(1).argument

   end

   it "should have a method to determine the number of bikes in the dock" do

     expect(dock).to respond_to(:bike_count)
     expect( dock.bike_count.instance_of?(Fixnum) ).to eq true

   end

   it "should have nine bikes in the dock, and then ten after docking a bike" do
     expect(dock.bike_count).to eq 9
     dock.dock_bike(bike)
     expect(dock.bike_count).to eq 10
   end

   it "should raise an error upon releasing bike when no bikes are left in dock" do
     10.times { dock.release_bike }
     expect{dock.release_bike}.to raise_error("Fail")
   end

   it "should raise an error upon docking bike when 10 bikes in dock" do
     10.times {dock.dock_bike(bike)}
     expect {dock.dock_bike(bike)}.to raise_error("Fail")
   end

end
