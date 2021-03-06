
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "geo/version"

Gem::Specification.new do |spec|
  spec.name          = "geo"
  spec.version       = Geo::VERSION
  spec.authors       = ["Eldar Iskhakov"]
  spec.email         = ["iskhakov.eldar95@gmail.com"]

  spec.summary       = 'Geo For workshop OOP'
  spec.description   = 'Geo For workshop OOP'
  spec.homepage      = 'https://github.com/eldarik/geo'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec-power_assert"
end
