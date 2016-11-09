require 'docking_station'

describe DockingStation do

  it "should produce a new docking station object" do
    expect(subject).to be_kind_of(DockingStation)
  end

  it "should call the method release bike on the object" do
    expect(subject).to respond_to(:release_bike)
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
end
