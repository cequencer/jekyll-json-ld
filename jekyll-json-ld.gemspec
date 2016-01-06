Gem::Specification.new do |s|
  s.name                  = "jekyll-json-ld"
  s.version               = "0.0.2"
  s.date                  = File.mtime("jekyll-json-ld.gemspec").strftime("%Y-%m-%d")
  s.summary               = "JSON-LD Liquid Tags in Jekyll"
  s.description           = "An interface from Jekyll to the json-ld library. Turn front-matter YAML into beautiful linked data"
  s.author                = "Matthias Winkelmann"
  s.email                 = "matthias.winkelmann@gmail.com"
  s.files                 = Dir.glob("lib/**/*.rb")
  s.homepage              = "https://github.com/MatthiasWinkelmann/jekyll-json-ld"
  s.license               = "MIT"
  s.require_paths         = %w(lib)
  s.platform              = Gem::Platform::RUBY
  s.metadata = { "issue_tracker" => "https://github.com/MatthiasWinkelmann/jekyll-json-ld/issues" }
  s.required_ruby_version = ">= 2.0.0"
  s.add_runtime_dependency "jekyll", ["~> 3.0"]
  s.add_runtime_dependency "json-ld", ["~> 1.99"]
  s.add_development_dependency "rubocop", [">= 0"]
  s.add_development_dependency "jsonlint", [">= 0"]
end
