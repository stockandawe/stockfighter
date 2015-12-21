#!/usr/bin/env ruby

# Sandbox to test the Stockfighter class

require_relative  'stockfighter'

stockfighter = Stockfighter.new
puts stockfighter.heartbeat
puts stockfighter.get_quote("WDS")
