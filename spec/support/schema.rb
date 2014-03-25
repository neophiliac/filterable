ActiveRecord::Schema.define do
  self.verbose = false

  create_table :basic_models, :force => true do |t|
    t.string :attr1
    t.string :attr2
  end
  create_table :filterable_models, :force => true do |t|
    t.string :attr1
    t.string :attr2
  end
  create_table :big_filterable_models, :force => true do |t|
    t.string :attr1
    t.string :attr2
  end
end

