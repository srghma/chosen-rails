require 'chosen-rails/version'

module Chosen
  module Rails
  end
end

case ::Rails.version.to_s
when /^8/
  require 'chosen-rails/engine8'
when /^(4|5|6|7)/
  require 'chosen-rails/engine4'
when /^3\.[12]/
  require 'chosen-rails/engine3'
when /^3\.[0]/
  require 'chosen-rails/railtie'
end
