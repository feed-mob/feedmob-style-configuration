# feedmob-style

Feedmob shared style configs.

## Installation

Add this line to your application's Gemfile:

```ruby
group :development do
  gem "feedmob-style", git: "https://8c864c042adce62397dd0037eb590db94917bbda:x-oauth-basic@github.com/feed-mob/feedmob-style-configuration", branch: "master"
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

### Sider.yml

Create a `sider.yml` with the following directives:

```yml
linter:
  rubocop:
    gems:
      - name: "feedmob-style"
        git:
          repo: "https://8c864c042adce62397dd0037eb590db94917bbda:x-oauth-basic@github.com/feed-mob/feedmob-style-configuration"
          branch: "master"

  querly:
    gems:
      - name: "feedmob-style"
        git:
          repo: "https://8c864c042adce62397dd0037eb590db94917bbda:x-oauth-basic@github.com/feed-mob/feedmob-style-configuration"
          branch: "master"
```

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
  - https://raw.githubusercontent.com/feed-mob/feedmob-style-configuration/master/config/goodcheck-default.yml?token=ABZ7S56K2EZYZDT67B5UQUC5XEFQC
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
  - require: feedmob/style
```

Now, run:

```
$ bundle exec querly check .
```
