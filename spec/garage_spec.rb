require 'dependencies'

describe Garage do

  it 'should respond to bikes' do
    expect(subject).to respond_to(:bikes)
  end

  it 'should be able to store bikes' do
    expect(subject.bikes).to be_kind_of(Array)
  end

  it 'should have an infinite capacity' do
    expect(subject.capacity).to eq Float::INFINITY
  end

end
