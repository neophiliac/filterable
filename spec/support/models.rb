class BasicModel < ActiveRecord::Base
end

class FilterableModel < ActiveRecord::Base
  include Filterable
end

class BigFilterableModel < ActiveRecord::Base
  include Filterable
  scope :attr1, ->(p) { where(attr1: p) }
  scope :scoper, ->(p) { where(attr2: p) }
end

