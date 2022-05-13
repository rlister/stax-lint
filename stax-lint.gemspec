# frozen_string_literal: true

require_relative 'lib/stax/lint/version'

Gem::Specification.new do |spec|
  spec.name = 'stax-lint'
  spec.version = Stax::Lint::VERSION
  spec.authors = ['Richard Lister']
  spec.email = ['rlister@gmail.com']

  spec.summary = 'Add support for various linting tools to stax.'
  spec.description = 'Stax is a flexible set of ruby classes for cloudformation stacks: stax-lint adds support for linting tools.'
  spec.homepage = 'https://github.com/rlister/stax-lint'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['allowed_push_host'] = 'TODO: Set to your gem server \'https://example.com\''

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/rlister/stax-lint'
  # spec.metadata['changelog_uri'] = 'TODO: Put your gem\'s CHANGELOG.md URL here.'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end

  spec.bindir = 'bin'
  spec.executables = spec.files.grep(%r{\Abin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency('stax')
  spec.add_dependency('open3')
end
