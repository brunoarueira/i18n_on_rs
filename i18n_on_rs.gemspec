# frozen_string_literal: true

require_relative 'lib/i18n_on_rs/version'

Gem::Specification.new do |spec|
  spec.name          = 'i18n_on_rs'
  spec.version       = I18nOnRs::VERSION
  spec.authors       = ['Bruno Arueira']
  spec.email         = ['contato@brunoarueira.com']

  spec.summary       = 'I18n for ruby backed by rust'
  spec.description   = 'I18n for ruby backed by rust'
  spec.homepage      = 'https://github.com/brunoarueira/i18n_on_rs'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/brunoarueira/i18n_on_rs'
  spec.metadata['changelog_uri'] = 'https://github.com/brunoarueira/i18n_on_rs'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\u0000").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ['lib']

  spec.extensions << 'ext/Rakefile'

  spec.add_runtime_dependency 'rutie', '~> 0.0.4'
  spec.add_runtime_dependency 'thermite', '~> 0'
end
