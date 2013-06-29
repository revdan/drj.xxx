require "rack/jekyll"
require 'newrelic_rpm'
require 'rack/cache'

use Rack::Cache,
  :verbose     => true,
  :metastore   => 'file:/var/cache/rack/meta',
  :entitystore => 'file:/var/cache/rack/body'
use Rack::Deflater
run Rack::Jekyll.new(:destination => 'public')
