require 'cgi'

class RackTeacup
  def initialize app = nil
    @app = app || proc {|_| [404, {}, []]}
  end

  def call env
    req = Rack::Request.new env

    return @app.call env unless CGI.unescape(req.path_info) == "/☕️"

    # Rack::Lint complains about having a body for a HEAD request
    return [418, {}, []] if req.head?

    [
      418,
      {"Content-Type" => "text/plain; charset=UTF-8"},
      ["🍵"]
    ]
  end
end
