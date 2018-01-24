# mnd-rubocop
Shared Rubocop config to be included in MND apps

## Release new version
First install the fury gem `gem install fury` then login `fury login`, using the
fury credentials in 1password.

Then build and push the new build:
```
rake build
fury push pkg/mnd-rubocop-0.0.2.gem # replace the path with your newly built package
```

## Installation
Install _mnd-rubocop_:
```bash
 gem install mnd-rubocop --source https://aKZvh4xDR4r7EocPuzCH@gem.fury.io/me/
 ```
or add it to your Gemfile:

```ruby
gem 'mnd-rubocop', source: 'https://aKZvh4xDR4r7EocPuzCH@gem.fury.io/me/'
```

```ruby
source "https://aKZvh4xDR4r7EocPuzCH@gem.fury.io/me/" do
  gem "mnd-rubocop"  
end
```
and `bundle install`.

Create the following file or prepend to it:
```yaml
#.rubocop.yml
inherit_gem:
  mnd-rubocop: .rubocop.yml
```

That takes care of inheriting from the base `.rubocop.yml` contained in this gem.

Follow/Override any other value as you would normally do in your local `.rubocop.yml` file.
