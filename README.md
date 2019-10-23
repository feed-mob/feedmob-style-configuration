# feedmob-style

Feedmob shared style configs.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem "feedmob-style", github: "feedmob-style"
end
```

Or, for a Ruby library, add this to your gemspec:

```ruby
spec.add_development_dependency "feedmob-style"
```

And then execute:

```bash
$ bundle install
```

## Usage

### RuboCop
> https://github.com/rubocop-hq/rubocop

Create a `.rubocop.yml` with the following directives:

```yml
inherit_gem:
  feedmob-style:
    - config/rubocop-default.yml
```

Now, run:

```
$ bundle exec rubocop
```

### GoodCheck
> https://github.com/sider/goodcheck

Create a `goodcheck.yml` with the following directives:

```yml
import:
  - config/goodcheck-default.yml
```

Now, run:

```
$ bundle exec goodcheck check
```

### Querly
> https://github.com/soutaro/querly

Create a `querly.yml` with the following directives:

```yml
import:
  - load: config/querly-default.yml
```

Now, run:

```
$ bundle exec querly check .
```
