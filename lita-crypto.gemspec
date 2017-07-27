Gem::Specification.new do |spec|
  spec.name          = "lita-crypto"
  spec.version       = "0.2.0"
  spec.authors       = ["Agustin Feuerhake"]
  spec.email         = ["agustin@platan.us"]
  spec.description   = "Gives Crypto Currency Market Data"
  spec.summary       = "Gives Bitcoin Market Data"
  spec.homepage      = "https://platan.us"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.7"
  spec.add_runtime_dependency "httparty"
  spec.add_runtime_dependency "money"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end
