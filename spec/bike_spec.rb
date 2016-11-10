require 'dependencies'

describe Bike do

  it "should respond to the working? method" do
    expect(subject).to respond_to(:working?)
  end

  it 'should start in a working condition' do
    expect(subject.working?).to eq true
  end

  it 'should respond to break method' do
    expect(subject).to respond_to(:break!)
  end

  it "should return a bike when calling break" do
    expect(subject.break!).to be_kind_of(Bike)
  end

  it 'should not be working after breaking' do
    subject.break!
    expect(subject.working?).to eq false
  end

end
