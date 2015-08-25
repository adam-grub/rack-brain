# config.ru

require 'bundler'
Bundler.require

#require File.join(File.dirname(__FILE__),'lib', 'brain_rack')
require File.join(File.dirname(__FILE__),'lib', 'request_handler')

#BrainRackApplication = BrainRack.new

# Load the routes
#require File.join(File.dirname(__FILE__),'config', 'routes')

run RequestHandler.new
