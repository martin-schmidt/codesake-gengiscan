#!/usr/bin/env ruby
require 'codesake-commons'
require 'codesake/gengiscan'

$logger = Codesake::Commons::Logging.instance
$logger.toggle_syslog

$logger.helo "gengiscan", Codesake::Gengiscan::VERSION
$logger.die "missing url" if ARGV[0].nil?


target = Codesake::Core::Target.new({:url=>ARGV[0]})

$logger.log "fingerprinting #{target.url}"
target.fingerprint
$logger.log target.cms
