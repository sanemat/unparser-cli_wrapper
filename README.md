# Unparser::CliWrapper

Parser::CliWrapper provides `ruby-parse-wrapped` and `ruby-rewrite-wrapped` command.
`Parser` gem provides both `ruby-parse` and `ruby-rewrite`, but these don't accept _STDIN_.

This replaces '-' with _STDIN_ like unix option, the example below:

```
$ cat Gemfile | ruby-parse-wrapped -
(begin
  (send nil :source
    (str "https://rubygems.org"))
  (send nil :gemspec))
```

`*-wrapped` command accepts all existing options.

```
$ ruby-parse-wrapped Gemfile
(begin
  (send nil :source
    (str "https://rubygems.org"))
  (send nil :gemspec))
```

This is pareparation:

```
$ cat Gemfile
source 'https://rubygems.org';

gemspec

$ ruby-parse Gemfile
(begin
  (send nil :source
    (str "https://rubygems.org"))
  (send nil :gemspec))
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'unparser-cli_wrapper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install unparser-cli_wrapper

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/sanemat/unparser-cli_wrapper/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
