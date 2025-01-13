# mnd-rubocop

Rubocop config used in Mynewsdesk repositories.

## Usage

Create a `.rubocop.yml` file in your repository:

```yaml
inherit_from: https://raw.githubusercontent.com/mynewsdesk/mnd-rubocop/master/.rubocop.yml
```

To ensure you are running a compatible version of rubocop for this config, refer to the github action we use to run rubocop at: https://github.com/reclaim-the-stack/rubocop-action/blob/master/action.yml. The `inputs.gem_versions.defaults` determinites which rubocop gems to run with (copy paste the list into `gem install`).

Note however that it can be tricky to run the correct older versions in case you have newer versions installed at the same time since rubygems will always default to the latest gem version installed.

Good luck!
