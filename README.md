# stax-lint

Cloudformation stack linting tasks for [stax](https://github.com/rlister/stax).

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add stax-lint

Require in `Staxfile`:

    require 'stax/lint'

## Linters

### cfn-lint

Install `cfn-lint` from https://github.com/aws-cloudformation/cfn-python-lint, and run for any stack `foo`:

    $ bundle exec stax foo lint

Run for all stacks in `Staxfile`:

    $ bundle exec stax lint

### checkov

Install `checkov` from https://www.checkov.io/, and run for any stack `foo`:

    $ bundle exec stax foo checkov

Run for all stacks in `Staxfile`:

    $ bundle exec stax checkov

Ref: [checkov reference](https://www.checkov.io/2.Basics/CLI%20Command%20Reference.html).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
