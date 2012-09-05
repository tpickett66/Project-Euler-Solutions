require 'rubygems'
require 'bundler/setup'
require 'minitest/spec'

ROOT_PATH = File.join(File.dirname(__FILE__), "..")

$:.unshift(File.join(ROOT_PATH, 'lib'))

require 'pes'
