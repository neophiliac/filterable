class BasicModel < ActiveRecord::Base
end

class FilterableModel < ActiveRecord::Base
  include Filterable
end

class BigFilterableModel < ActiveRecord::Base
  include Filterable
  scope :attr1, -> { where attr1: 'S' }
  scope :scoper, -> { where attr2: 'S' }
end

