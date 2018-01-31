# coding: utf-8
Gem::Specification.new do |spec|
  spec.name        = "mnd-rubocop"
  spec.version     = "0.0.2"
  spec.date        = "2018-01-25"
  spec.summary     = "Shared Rubocop config to be included in MND apps"
  spec.description = ""
  spec.authors       = ["Mynewsdesk"]
  spec.email         = ["dev@mynewsdesk.com"]
  spec.files       = [".rubocop.yml"]
  spec.homepage    = "https://www.mynewsdesk.com"
  spec.license       = "MIT"
  spec.add_runtime_dependency "rubocop", "~> 0"
end
