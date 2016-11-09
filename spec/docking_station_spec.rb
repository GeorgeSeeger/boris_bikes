require 'docking_station'

describe DockingStation do

    it "should produce a new docking station object" do
      expect(subject).to be_kind_of(DockingStation)
    end

    it "should call the method release bike on the object" do
      expect(subject).to respond_to(:release_bike)
    end

    it 'should release a bike if there\'s one in the station' do
      bike = subject.get_bike
      subject.dock_bike(bike)
      expect(subject.release_bike).to be_kind_of(Bike)
    end

    it 'should get a bike' do
      expect(subject.get_bike).to be_kind_of(Bike)
    end

    it 'should get a working bike' do
      expect(subject.get_bike.working?).to eq true
    end

    it 'should respond to dock_bike' do
      expect(subject).to respond_to(:dock_bike).with(1).argument
    end

    it 'should contain a bikes array' do
      expect(subject.bikes).to be_kind_of(Array)
    end

    it 'should add a docked bike to docked bikes array' do
      bike = subject.get_bike
      subject.dock_bike(bike)
      expect(subject.bikes).to include(bike)
    end

    it 'should have user set capacity on initialize method' do
      subject = DockingStation.new(15)
      expect(subject.capacity).to eq 15
    end

  context "Errors" do

    it 'should raise an error if there are no bikes at the station' do
      expect { subject.release_bike }.to raise_error(RuntimeError, "No bikes available.")
    end

    it "should raise an error if the station is at capacity ie #{DockingStation::DEFAULT_CAPACITY} bikes already" do
      capacity = DockingStation::DEFAULT_CAPACITY
      capacity.times { subject.dock_bike(subject.get_bike) }
      expect { subject.dock_bike(subject.get_bike) }.to raise_error(RuntimeError, "Dock at capacity.")
    end

  end

end
