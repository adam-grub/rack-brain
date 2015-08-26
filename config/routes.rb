# config/routes.rb

require File.join(File.dirname(__FILE__), '../', 'lib', 'brain_rack')

BrainRackApplication = BrainRack.new

BrainRackApplication.router.config do
  get "/test", :to => "custom#index"
  get /.*/, :to => "custom#show"
end
