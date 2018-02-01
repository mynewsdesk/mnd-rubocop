# mnd-rubocop
Shared Rubocop config to be included in MND apps.

This gem is currently published as private gem on Gemfury, this repository has been made public
to allow inclusion of the .rubocop.yml file as a remote config.

Please note that this repository is used as [organisation-wide config](https://robots.thoughtbot.com/hound-introduces-style-guides-for-organisations
) in HoundCI.

## Release new version
First install the fury gem `gem install fury` then login `fury login`, using the
fury credentials in 1password.

Then build and push the new build:
```
rake build
fury push pkg/mnd-rubocop-0.0.2.gem # replace the path with your newly built package
```

## Installation (gem version)
Install _mnd-rubocop_:
```bash
 gem install mnd-rubocop --source [replace with gemfury_url/token]
 ```
or add it to your Gemfile:

```ruby
gem 'mnd-rubocop', source: '[replace with gemfury_url/token]'
```

```ruby
source "[replace with gemfury_url/token]" do
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

Or, to have just the same rules as Prime in your application, use the Prime config file:

```yaml
#.rubocop.yml
inherit_gem:
  mnd-rubocop: .rubocop-prime.yml
```

## Installation (remote url version)
Create the following file or prepend to it:
```yaml
#.rubocop.yml
inherit_from: https://raw.githubusercontent.com/mynewsdesk/mnd-rubocop/master/.rubocop.yml
```
