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
     expect(dock.bike_count).to eq 19
     dock.dock_bike(bike)
     expect(dock.bike_count).to eq 20
   end

   it "should raise an error upon releasing bike when no bikes are left in dock" do
     dock.bike_count.times { dock.release_bike }
     expect{dock.release_bike}.to raise_error("Fail")
   end

   it "should raise an error upon docking bike when 20 bikes in dock" do
     20.times {dock.dock_bike(bike)}
     expect {dock.dock_bike(bike)}.to raise_error("Fail")
   end

   it "should be able to release multiple bikes" do
     number = rand(5)
     expect(dock).to respond_to(:release_bike).with(1).argument
     before = dock.bike_count
     dock.release_bike(number)
     expect(dock.bike_count).to eq (before - number)
   end

   it "should have a collection of bikes" do

     dock.bikes.each{ |b|
       expect(b.instance_of?(Bike)).to eq true
     }

   end

end
