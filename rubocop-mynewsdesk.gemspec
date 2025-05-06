Gem::Specification.new do |spec|
  spec.name = "rubocop-mynewsdesk"
  spec.version = "1.75.5" # matches the currently used rubocop version
  spec.authors = ["David Backeus"]
  spec.email = ["david.backeus@mynewsdesk.com"]
  spec.summary = "Everything needed to run rubocop in a mynewsdesk project"
  spec.homepage = "https://github.com/mynewsdesk/mnd-rubocop"
  spec.license = "MIT"
  spec.metadata = {
    "homepage_uri" => spec.homepage,
    "source_code_uri" => spec.homepage,
  }
  spec.files = %w[
    README.md
    mnd-rubocop.gemspec
    .rubocop.yml
    rubocop/rubocop.yml
    rubocop/rubocop-rails.yml
    rubocop/rubocop-rspec.yml
    rubocop/rubocop-rspec_rails.yml
  ]

  spec.add_dependency "rubocop", "1.75.5"
  spec.add_dependency "rubocop-rails", "2.31.0"
  spec.add_dependency "rubocop-rspec", "3.6.0"
  spec.add_dependency "rubocop-rspec_rails", "2.31.0"

  spec.required_ruby_version = ">= 3.4.2"
end
