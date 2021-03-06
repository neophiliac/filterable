# Filterable

[![Build Status](https://travis-ci.org/neophiliac/filterable.svg)](https://travis-ci.org/neophiliac/filterable)

Based on Justin Weiss' blog post [Search and Filter Rails Models Without Bloating Your Controller](http://www.justinweiss.com/blog/2014/02/17/search-and-filter-rails-models-without-bloating-your-controller/),
Filterable enables you to replace
MyModel.find.long.string.of.conditions with MyModel.filter(list_of_scopes).

## Installation

Add this line to your application's Gemfile:

    gem 'filterable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install filterable

## Usage

1. In your model, consider the attributes you want to match.
2. Create scopes that match appropriately.
```ruby
scope :name, ->(p) { where(name: p) }
scope :category, ->(p) { where(category: p) }
```
3. In your view, make sure these params will be sent on submit.
4. In your controller, use ModelName.filter(params.slice(:name, :category))

## TODO

* Add methods to create simple scopes
* Keep a list of auto-created scopes to use as the default list if no params are passed to the #filter method
* Add a method to refer to existing scopes, (add them to the default list)

## Similar Gems

* [FilterableSortable](https://github.com/gaar4ica/filterable_sortable)
* [has_scope](https://github.com/plataformatec/has_scoper)
* [periscope](https://github.com/laserlemon/periscope)

## Contributing

1. Fork it ( http://github.com/neophiliac/filterable/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
