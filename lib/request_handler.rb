# lib/request_handler.rb

class RequestHandler
  def call(env)
    route = nil#BrainRackApplication.router.route_for(env)
    if route
      response = route.execute(env)
      return response.rack_response
    else
      return [404, {}, ["Sorry! 404 error bad route"]]
    end
  end
end
