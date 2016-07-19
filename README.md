# Blockchain::Api

Another Blockchain.info API wrapper. Currently supports these endpoints:
```
https://blockchain.info/ticker
https://api.blockchain.info/v2/receive
https://api.blockchain.info/v2/receive/checkgap
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'blockchain-api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blockchain-api

## Usage

```ruby
require 'blockchain-api'

client = Blockchain::API::V1::Client.new
client_v2 = Blockchain::API::V2::Client.new(key: ENV['BLOCKCHAIN_API_KEY'], xpub: ENV['BLOCKCHAIN_XPUB'])

client.ticker['USD']['last'].to_f
# => 672.75
client_v2.receive(index: 42, callback: 'https://example.com/blockchain_callback')
# => {"address"=>"1HibT3LQWQzNuEpPzame2g5Ua2FN1akNGr", "index"=>42, "callback"=>"https://example.com/blockchain_callback"}

```

## Development

Blah blah.

## Contributing

Blah blah too.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

