require 'rubygems'
require 'bundler/setup'
require 'minitest/unit'

ROOT_PATH = File.join(File.dirname(__FILE__), "..")

$:.unshift(File.join(ROOT_PATH, 'lib'))

require 'pes'