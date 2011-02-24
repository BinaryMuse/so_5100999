module Rack
  module Api
    class User
      def self.call(env)
        if env["SCRIPT_NAME"] =~ /^\/api\/user\//i
          [200, {}, ["Here it is."]]
        else
          [200, {}, ["Nope, missed it. Here's env:\n" + env.inspect]]
        end
      end
    end
  end
end
