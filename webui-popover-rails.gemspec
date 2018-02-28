
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "webui-popover-rails/version"

Gem::Specification.new do |spec|
  spec.name          = "webui-popover-rails"
  spec.version       = Webui::Popover::Rails::VERSION
  spec.authors       = ["Michael Grubb"]
  spec.email         = ["michael@grubb.co"]

  spec.summary       = %q{Wrapper around webui-popover JS library for use in Rails' asset pipeline}
  spec.homepage      = "https://github.com/mgrubb/webui-popover-rails"
  spec.license       = "MIT"

  spec.files         = Dir["{lib,app}/**/*"] + ["LICENSE.txt", "README.md", "CODE_OF_CONDUCT.md"]
  #  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
  #  f.match(%r{^(test|spec|features)/})
  #end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "< 2.00"
  spec.add_development_dependency "rake", "< 13.0"
end
