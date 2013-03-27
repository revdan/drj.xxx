require "rack/jekyll"
configure :production do
  require 'newrelic_rpm'
end


run Rack::Jekyll.new(:destination => 'public')
