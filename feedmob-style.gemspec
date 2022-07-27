lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "feedmob/style/version"

Gem::Specification.new do |spec|
  spec.name          = "feedmob-style"
  spec.version       = Feedmob::Style::VERSION
  spec.authors       = ["Feedmob Dev Team"]
  spec.email         = ["admin@feedmob.info"]

  spec.summary       = %q{Feedmob style guides and shared style configs}
  spec.homepage      = "https://github.com/feed-mob"

  spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.6.0'

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"

  # MeowCop is a gem for RuboCop configuration, it focuses Lint
  # https://github.com/sider/meowcop
  spec.add_dependency "meowcop", "~> 3.2.0"

  # Regexp based customizable linter
  # https://github.com/sider/goodcheck
  spec.add_dependency "goodcheck", "3.1.0"

  # Querly is a query language and tool to find out method calls from Ruby programs
  # https://github.com/soutaro/querly
  spec.add_dependency "querly", "~> 1.3.0"

  spec.add_dependency "rubocop", "~> 1.32.0"
  spec.add_dependency "rubocop-rails", "~> 2.15.2"
  spec.add_dependency "rubocop-rspec", "~> 2.12.1"
end
