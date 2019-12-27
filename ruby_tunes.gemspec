lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ruby_tunes/version"

Gem::Specification.new do |spec|
  spec.name          = "ruby_tunes"
  spec.version       = RubyTunes::VERSION
  spec.authors       = ["aryaziai"]
  spec.email         = ["arya721@gmail.com"]

  spec.summary       = %q{Random song from any genre}
  spec.description   = %q{My second ruby gem. Plays a random selected song from the genre you choose.}
  spec.homepage      = "https://github.com/aryaziai/Ruby_Tunes"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/aryaziai/Ruby_Tunes"
  spec.metadata["changelog_uri"] = "https://github.com/aryaziai/Ruby_Tunes/blob/master/Changelog.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "launchy"
end
