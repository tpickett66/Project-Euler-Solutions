# encoding: UTF-8

require 'mathn'

Dir.glob(File.dirname(File.expand_path(__FILE__)) + '/**/*.rb').each do |file|
  require file
end

Numeric.send(:include, NumericExtension)
