Gem::Specification.new do |s|
  s.name        = 'rack-teapot'
  s.version     = '0.1.0'
  s.licenses    = ['MIT']
  s.summary     = "☕️?  No, 🍵"
  s.description = "Rack middleware that returns 418 🍵 for /☕️"
  s.authors     = ['Brian Gernhardt']
  s.email       = 'brian@gernhardtsoftware.com'
  s.files       = ["lib/rack-teapot.rb"]
  s.homepage    = 'https://github.com/benabik/rack-teapot'

  s.add_runtime_dependency 'rack', '>= 2.2.3', '< 3.1.0'

  s.add_development_dependency 'webrick', '~> 1.6.0'
end
