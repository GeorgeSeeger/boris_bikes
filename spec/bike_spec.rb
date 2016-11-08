require 'boris_bikes.rb'

describe Bike do

  bike = Bike.new

  it "should respond to bike working?" do
    expect(bike).to respond_to(:working?)
  end

end
