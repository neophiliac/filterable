# Filterable

Based on Justin Weiss' blog post [Search and Filter Rails Models Without Bloating Your Controller][http://www.justinweiss.com/blog/2014/02/17/search-and-filter-rails-models-without-bloating-your-controller/], Filterable allows you to create simple scopes, make a default list of filterable attributes, and enables you to replace MyModel.find.long.string.of.conditions with MyModel.filter. 

## Installation

Add this line to your application's Gemfile:

    gem 'filterable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install filterable

## Usage

MyModel.filter will use the default attribute list, and if any of those symbols are present in the params hash, the scopes will be added to the find call, and chained if multiple selectors are present in the URI.

In your model, consider the attributes you want to match.

    filter_match :name, :category

That will create these scopes:

    scope name, -> { where(name: params['name']) }
    scope category, -> { where(category: params['category']) }

The default filter attribute list will contain 'name' and 'category'. When the model's filter method is called, if either or both of those attributes exist in the URI, the corresponding scopes will be added to the model's scope chain.

The default list can be overridden by passing a list to the filter method. Overrides can also refer to more complex scopes than Filterable creates automatically.

## Similar Gems

[FilterableSortable][https://github.com/gaar4ica/filterable_sortable]
[has_scope][https://github.com/plataformatec/has_scope]:w

## Contributing

1. Fork it ( http://github.com/neophiliac/filterable/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
