require 'bundler'
Bundler.require
require_relative 'lib/player'
require_relative 'lib/views/application'
require_relative 'lib/game'
require_relative 'lib/board'


gg =  Application.new

 puts gg.run
