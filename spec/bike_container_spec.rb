require 'dependencies'
require_relative '../lib/bike_container.rb'

describe 'BikeContainer' do
  let(:dummy_class) { Class.new { include BikeContainer } }

  # it 'should respond to bikes' do
  #   expect(dummy_class).to respond_to(:bikes)
  # end


end
