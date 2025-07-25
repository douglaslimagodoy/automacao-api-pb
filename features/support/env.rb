puts "Using Ruby from: #{RUBY_ENGINE} - #{RUBY_VERSION}"
puts "Loaded from: #{RUBY_PLATFORM}"

require 'httparty'
require 'json-schema'
require 'rspec'

require_relative 'http_helper'

Dir[File.join(File.dirname(__FILE__), '../schemas/*.rb')].sort.each do |file|
  require_relative file
end
