# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "web-accessibility-guidelines"
  spec.version       = "0.1.0"
  spec.authors       = ["Steven Mouret"]
  spec.email         = ["steven.mouret+github@gmail.com"]

  spec.summary       = "Simple Jekyll theme for documentation"
  spec.homepage      = "https://github.com/AgenceStratis/web-accessibility-guidelines"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.8"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
