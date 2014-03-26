require 'spec_helper'
require 'awesome_print'

describe Filterable do
  it "creates a filterable model" do
    m = FilterableModel.new
    m.respond_to?(:filter)
  end

  it "filters based on params" do
    BigFilterableModel.create(attr1: 'match')
    BigFilterableModel.create(attr1: 'no match')
    BigFilterableModel.filter({attr1: 'match'}).size.should == 1
  end
end
