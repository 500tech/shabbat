# Shabbat

The most Kosher GEM in the web!
Gives all the methods a jewish programmer needs

## Installation

Add this line to your application's Gemfile:

    gem 'shabbat'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shabbat

## Usage

## Date & Time methods:
```ruby
Date.today.shabbat?
Time.now.shabbat?
Date.next_shabbat
Date.last_shabbat
10.days.from_now.last_shabbat
10.days.from_now.next_shabbat

```
## Some ideas for the future:
  Date.next_yom_kipur
  Date.today_.to_heb
  Date.today.meuberet?

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
