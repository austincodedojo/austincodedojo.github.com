#!/usr/bin/env ruby

ROOT     = File.join(File.dirname(__FILE__), "..")
PLUGINS  = File.expand_path(File.join(ROOT, "_plugins"))

$LOAD_PATH.unshift PLUGINS
$LOAD_PATH.unshift ROOT

require "tests/next_meeting_date_tests.rb"

