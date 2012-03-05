# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "prefixed-log-formatter/version"

Gem::Specification.new do |s|
  s.name        = "prefixed-log-formatter"
  s.version     = PrefixedLogFormatter::VERSION
  s.authors     = ["Jordan Brough"]
  s.email       = ["jordan@animoto.com"]
  s.homepage    = "http://github.com/jordan-brough/prefixed-logger-formatter"
  s.summary     = "Sensible and minimal log prefixng for Ruby apps"
  s.description = %q{Log file lines should be prefixed with log level, timestamp, process id and an easy-to-grep "end of prefix" marker.  This subclass of Logger::Formatter does those things.}

  s.rubyforge_project = "prefixed-log-formatter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
