# mnd-rubocop

Rubocop config used in Mynewsdesk repositories.

## Usage

Add the following to your `Gemfile`:

```ruby
group :development, :test do
  gem "rubocop-mynewsdesk", git: "https://github.com/mynewsdesk/mnd-rubocop.git"
end
```

Create a `.rubocop.yml` file in your repository:

```yaml
inherit_mode:
  merge:
    - Exclude

inherit_gem:
  rubocop-mynewsdesk:
    - .rubocop.yml

# Add project specific config here, eg:
# AllCops:
#   TargetRailsVersion: 8.0
#   Exclude:
#     - db/migrate/2024*
```

Verify that it's working by running `bundle exec rubocop`.

### Continuous Integration via Github Actions

Add the following to `.github/workflows/rubocop.yml`:

```yaml
name: Rubocop

on: pull_request

permissions:
  contents: read
  pull-requests: write

jobs:
  rubocop:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: ruby/setup-ruby@v1
      - uses: reclaim-the-stack/rubocop-action@master
        with:
          gem_versions: Gemfile
```
