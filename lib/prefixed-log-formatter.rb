require 'prefixed-log-formatter/version'
require 'logger'

module PrefixedLogFormatter
  class Formatter < ::Logger::Formatter
    attr_accessor :prefix_separator

    def initialize
      super
      @prefix_separator = ':::'
    end

    def call(severity, timestamp, progname, msg)
      prefix = "#{severity[0..0]} #{format_datetime(timestamp)} #{$$} #{prefix_separator} "
      msg2str(msg).gsub(/^/, prefix) << "\n"
    end

    private

    def format_datetime(time)
      time.strftime("%Y-%m-%d %H:%M:%S")
    end

  end
end
