require 'rack'

class Application

    def call(env)
      response = Rack::Response.new
      now = Time.now
      if now <= 12
        resp.write "Good morning"
      else 
        resp.write "Good afternoon"
      end
      resp.finish
    end
end