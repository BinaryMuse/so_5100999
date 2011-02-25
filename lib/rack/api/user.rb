module Rack
  module Api
    class User
      def initialize(app)
        @app = app
      end

      def call(env)
        if env["PATH_INFO"] =~ /^\/api\/user\//i
          [200, {}, ["Here it is."]]
        else
          @app.call(env)
        end
      end
    end
  end
end
