# Emagen

Create a series of possible email addresses from someone's name and a website's domain.

## Installation

Add this line to your application's Gemfile:

    gem 'emagen'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install emagen

## Usage
require 'emagen'
name = "Louis Sayers"
domain = "louissayers.com"
possible_emails = Emagen.for(name, domain)

&#35; Returns a list of possible emails such as:
&#35; LouisSayers@louissayers.com, LSayers@louissayers.com L.S@louissayers.com


## Contributing

1. Fork it ( http://github.com/<my-github-username>/emagen/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
