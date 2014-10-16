Gem::Specification.new do |s|
  s.name        = 'bowerfresh'
  s.version     = '0.0.1'
  s.summary     = "keep bower dependencies fresh"
  s.description = "keep bower dependencies fresh"
  s.authors     = ["Nick McCready"]
  s.email       = 'nemtcan@gmail.com'
  s.files       = `git ls-files`.split($\)
  s.executables = ["bowerfreshrb"]
  s.homepage    = 'https://github.com/nmccready/bowerfresh'
  s.license     = 'MIT'
  s.require_paths = ["/"]
end