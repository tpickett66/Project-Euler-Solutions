# encoding: UTF-8

require 'mathn'

Dir.glob(File.dirname(File.expand_path(__FILE__)) + '/**/*').each do |file|
  require file
end