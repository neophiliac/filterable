require 'spec_helper'
require 'awesome_print'

describe Filterable do
  it "creates a filterable model" do
    m = FilterableModel.new
    m.respond_to?(:filter)
  end
end
