RestClientPlus
==============

Extensions to Ruby's RestClient

## Installation

Tested against ruby versions

    not working
      1.8.7

     working
      1.9.3-p484
      2.0.0-p353
      2.1.0dev (2013-11-23 trunk 43807)

Add this line to your application's Gemfile:

    gem 'rest_client_plus'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rest_client_plus
    
Require using: 

    $ require 'rest_client_plus'

## Issues

  Warning: You are using Excon 0.20.1. WebMock supports version >= 0.27.5.

## Usage

  RestClientPlus provides GET, POST and PUT methods which return a Ruby hash if json is received.

  ArrayHelper.unwrap_from_array will unwrap a hash from a single-element array. Array is also extended as
  Array#unwrap_from_array so:

    [ {:key => "value"} ].unwrap_from_array  #=> {:key => "value"}


## Running Tests

/ruby tests/*

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Add Tests to the project
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request

