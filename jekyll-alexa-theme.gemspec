# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-alexa-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["Maximilian Haag"]
  spec.email         = [""]

  spec.summary       = "Single page theme built for Alexa."
  spec.homepage      = "http://todo.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_data|_layouts|_includes|_plugins|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.3"
end
