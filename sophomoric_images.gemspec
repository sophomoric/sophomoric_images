lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'sophomoric_images'
  s.version     = '0.0.0'
  s.date        = '2015-01-03'
  s.summary     = "Use Paperclip and Jcrop to add attached images to a class"
  s.description = "Include Imageable and Croppable Modules in a rails model"
  s.authors     = ["Sophomoric"]
  s.email       = "gorkleaderoftribe@gmail.com"
  s.files       = ["lib"]
  s.homepage    = 'http://rubygems.org/gems/sophomoric_images'
  s.license     = 'MIT'

  s.add_dependency "paperclip"

  s.add_development_dependency "bundler"
  s.add_development_dependency "pry"
  s.add_development_dependency "rake"

  s.add_development_dependency "rspec"
end
