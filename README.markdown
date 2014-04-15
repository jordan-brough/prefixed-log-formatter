### Purpose

Log file lines should be prefixed with log level, timestamp, process id and an easy-to-grep "end of prefix" marker.  This subclass of Logger::Formatter does those things.

It also ensures that every line in the log is prefixed, even if the log messages themselves have newlines in them.

### Example IRB Usage

* install gem

``` 
gem install prefixed-log-formatter
```

```ruby
# from within irb
require 'rubygems'
require 'prefixed-log-formatter'

logger = Logger.new($stdout)
logger.formatter = PrefixedLogFormatter::Formatter.new
logger.debug 'hi'
```

### Example Rails usage

```ruby
# add to your Gemfile
gem "prefixed-log-formatter"

# in config/application.rb
config.logger = Logger.new(config.paths.log.first)
config.log_level = Rails.env.production? ? Logger::INFO : Logger::DEBUG
config.logger.formatter = PrefixedLogFormatter::Formatter.new

# in your app
Rails.logger.debug 'debug'
Rails.logger.info 'info'
# etc...
```

### Customize the prefix separator

The default is ':::'

```ruby
logger = Logger.new($stdout)
logger.formatter = PrefixedLogFormatter::Formatter.new
logger.formatter.prefix_separator = '--'
logger.debug 'hi'
# result:
# D 2012-03-05 15:18:58 28986 -- hi
```
