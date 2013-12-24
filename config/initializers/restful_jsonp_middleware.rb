# Rack::MethodOverride only overrides POST requests
# https://github.com/rack/rack/blob/master/lib/rack/methodoverride.rb
#
# For JSON support we need the ability to override other methods as well,
# hence this middleware

module Rack
  class RestfulMethodOverride < MethodOverride

    def call(env)
      method = method_override(env)
      if HTTP_METHODS.include?(method)
        env["rack.methodoverride.original_method"] = env["REQUEST_METHOD"]
        env["REQUEST_METHOD"] = method
      end
      @app.call(env)
    end

    def method_override(env)
      req = Request.new(env)
      method = req.params[METHOD_OVERRIDE_PARAM_KEY] ||
        env[HTTP_METHOD_OVERRIDE_HEADER]
      method.to_s.upcase
    end

  end
end

Rails.application.config.middleware.swap(Rack::MethodOverride,
  Rack::RestfulMethodOverride)

Rails.application.config.middleware.insert_before(
  Rack::RestfulMethodOverride, Rack::JSONP)
