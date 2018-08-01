
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "wekan/version"

Gem::Specification.new do |spec|
  spec.name          = "wekan"
  spec.version       = Wekan::VERSION
  spec.authors       = ["encry1024"]
  spec.email         = ["register.chihiro@gmail.com"]

  spec.summary       = %q{Library for Wekan RESTful API}
  spec.description   = %q{Library for Wekan RESTful API}
  spec.homepage      = "https://github.com/owlinux1000/wekan-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
