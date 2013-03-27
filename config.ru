require "rack/jekyll"
require 'newrelic_rpm'

configure :production do
  require 'newrelic_rpm'
end
run Rack::Jekyll.new(:destination => 'public')
