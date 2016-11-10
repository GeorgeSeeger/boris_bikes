require 'dependencies'

describe Van do

  let(:broken_bike) {
    Bike.new.break!
    # allow(double (:bike)).to receive(:working?).and_return(false)
  }
  let(:working_bike) {
    Bike.new
    # allow(double (:bike)).to receive(:working?).and_return(true)
  }
  let(:dock) { DockingStation.new } #double :DockingStation }
  let(:garage){ Garage.new }

    it 'should respond to collect bikes' do
      expect(subject).to respond_to(:collect_bikes)
    end

    it 'should take one argument in collect bikes' do
      expect(subject).to respond_to(:collect_bikes).with(1).argument
    end

    it 'should store bikes' do
      expect(subject.bikes).to be_kind_of(Array)
    end

    it 'should collect bikes' do
      # allow(dock).to receive(:bikes).and_return([broken_bike, working_bike])
      dock.dock_bike(broken_bike); dock.dock_bike(working_bike)
      subject.collect_bikes(dock)
      expect(subject.bikes).to eq [broken_bike]
    end

    it 'should respond to deliver bikes' do
      expect(subject).to respond_to :deliver_bikes
    end

    it 'should take one argument in deliver bikes' do
      expect(subject).to respond_to(:deliver_bikes).with(1).argument
    end

    it 'should deliver broken bikes to the garage' do
      subject.instance_variable_set(:@bikes, [broken_bike, working_bike])
      subject.deliver_bikes(garage)
      expect(garage.bikes).to eq [broken_bike]
    end

    it 'should take working bikes from a garage' do
      garage.instance_variable_set(:@bikes, [broken_bike, working_bike])
      subject.collect_bikes(garage)
      expect(subject.bikes).to eq [working_bike]
    end

    it 'should deliver working bikes to a dock' do
      subject.instance_variable_set(:@bikes, [broken_bike, working_bike])
      subject.deliver_bikes(dock)
      expect(dock.bikes).to eq [working_bike]
    end
end
