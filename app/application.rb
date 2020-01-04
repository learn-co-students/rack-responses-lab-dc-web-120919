require 'rack'

class Application

    def call(env)
      response = Rack::Response.new
      now = Time.now
      if now.hour >= 12
        response.write "Good Afternoon"
      else 
        response.write "Good Morning"
      end
      response.finish
    end
end

