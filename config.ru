require "rack/jekyll"
require 'newrelic_rpm'
use Rack::Deflater
run Rack::Jekyll.new(:destination => 'public')
