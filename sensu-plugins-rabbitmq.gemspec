# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'date'
require 'sensu-plugins-rabbitmq/version'

Gem::Specification.new do |s| # rubocop:disable Metrics/BlockLength
  s.authors                = ['Sensu-Plugins and contributors']

  s.date                   = Date.today.to_s
  s.description            = 'This plugin provides native RabbitMQ instrumentation
                              for monitoring and metrics collection, including:
                              service health, message, consumer, and queue health/metrics
                              via `rabbitmq_management`, and more'
  s.email                  = '<sensu-users@googlegroups.com>'
  s.executables            = Dir.glob('bin/**/*.rb').map { |file| File.basename(file) }
  s.files                  = Dir.glob('{bin,lib}/**/*') + %w[LICENSE README.md CHANGELOG.md]
  s.homepage               = 'https://github.com/sensu-plugins/sensu-plugins-rabbitmq'
  s.license                = 'MIT'
  s.metadata               = { 'maintainer'         => 'sensu-plugin',
                               'development_status' => 'active',
                               'production_status'  => 'unstable - testing recommended',
                               'release_draft'      => 'false',
                               'release_prerelease' => 'false' }
  s.name                   = 'sensu-plugins-rabbitmq'
  s.platform               = Gem::Platform::RUBY
  s.post_install_message   = 'You can use the embedded Ruby by setting EMBEDDED_RUBY=true in /etc/default/sensu'
  s.require_paths          = ['lib']
  s.required_ruby_version  = '>= 2.3.0'

  s.summary                = 'Sensu plugins for rabbitmq'
  s.test_files             = s.files.grep(%r{^(test|spec|features)/})
  s.version                = SensuPluginsRabbitMQ::Version::VER_STRING

  s.add_runtime_dependency 'sensu-plugin',   '~> 3.0'

  s.add_runtime_dependency 'amq-protocol',   '2.0.1'
  s.add_runtime_dependency 'bunny',          '= 2.6.4'
  s.add_runtime_dependency 'carrot-top',     '0.0.7'
  s.add_runtime_dependency 'inifile',        '3.0.0'
  s.add_runtime_dependency 'rest-client',    '2.0.2'
  s.add_runtime_dependency 'ruby_dig',       '0.0.2'
  s.add_runtime_dependency 'stomp',          '= 1.4.7'

  s.add_development_dependency 'bundler',                   '~> 2.0'
  s.add_development_dependency 'codeclimate-test-reporter', '~> 0.4'
  s.add_development_dependency 'github-markup',             '~> 3.0'
  s.add_development_dependency 'pry',                       '~> 0.10'
  s.add_development_dependency 'rake',                      '~> 12.3'
  s.add_development_dependency 'redcarpet',                 '~> 3.2'
  s.add_development_dependency 'rspec',                     '~> 3.4'
  s.add_development_dependency 'rubocop',                   '~> 0.51.0'
  s.add_development_dependency 'simplecov',                 '~> 0.16.1'
  s.add_development_dependency 'simplecov-console',         '~> 0.4.2'
  s.add_development_dependency 'simplecov-html',            '~> 0.10.2'
  s.add_development_dependency 'yard',                      '~> 0.9.11'
end
