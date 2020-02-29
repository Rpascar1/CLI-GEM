lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "coral_getter/version"

Gem::Specification.new do |spec|
  spec.name          = "coral_getter"
  spec.version       = CoralGetter::VERSION
  spec.authors       = ["Richard Pascarelli"]
  spec.email         = ["Rpavesi84@gmail.com"]

  spec.summary       = %q{gets coral information}
  spec.description   = ""
  spec.homepage      = 'https://github.com/Rpascar1/CLI-GEM'

  spec.metadata["allowed_push_host"] = 'http://mygemserver.com'

  spec.metadata["homepage_uri"] = "https://github.com/Rpascar1/CLI-GEM"
  spec.metadata["source_code_uri"] = "https://github.com/Rpascar1/CLI-GEM"
  spec.metadata["changelog_uri"] = "https://github.com/Rpascar1/CLI-GEM/commits/master"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rb-readline"
  spec.add_development_dependency "launchy"
  spec.add_development_dependency "nokogiri"

  spec.add_dependency "httparty"
  spec.add_dependency "rb-readline"
  spec.add_dependency "launchy"
  spec.add_dependency "nokogiri"
  spec.add_dependency 'pry'

end

#REVER#
