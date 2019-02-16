# GetGeo
With GetGeo you can get information about your IP via [http://ip-api.com](http://ip-api.com).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'get_geo'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install get_geo

## Usage
```
# argument is ip, if it is not passed, result will be for your current ip
geo_data = GetGeo.get_data('217.66.24.134')
geo_data.city # => Kazan’
geo_data.country # => Russia
```

Gem has cli:
```
    $ geo-get 217.66.24.134
    --- GetGeo ---
    city: Kazan’
    country: Russia
    lat: 55.7897
    lon: 49.1571
    query: 217.66.24.134
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/eldarik/get_geo.
