require 'bundler/setup'
Bundler.setup

require 'filterable' # and any other gems you need

#ActiveRecord::Migration.verbose = false
ActiveRecord::Base.establish_connection({adapter: 'sqlite3', database: ':memory:'})

load File.dirname(__FILE__) + '/support/schema.rb'
require File.dirname(__FILE__) + '/support/models.rb'

RSpec.configure do |config|
#  config.color_enabled = true
end

class Object
  def diff_methods(obj1=nil)
    if obj1.nil?
      case self.class
      when Class
        obj1 = Object
      when Module
        obj1 = Module
      else
        obj1 = Object.new
      end
    end
    self.public_methods.sort - obj1.public_methods
  end
end

