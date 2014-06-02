require File.join([File.dirname(__FILE__),'lib','md','version.rb'])

spec = Gem::Specification.new do |s|
  s.name = 'md-cli'
  s.version = MD::VERSION
  s.author = 'Gabriele Lana'
  s.email = 'gabriele.lana@gmail.com'
  s.homepage = 'https://github.com/gabrielelana/md-cli'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Syntax highlights Markdown text with ANSI colors to be printed to the terminal'
  s.files = `git ls-files`.split("\n")
  s.require_paths << 'lib'
  s.bindir = 'bin'
  s.executables << 'md'
  # s.add_development_dependency('rdoc')
  s.add_development_dependency('rake')
  s.add_development_dependency('rspec')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('redcarpet','~> 3.1')
  s.add_runtime_dependency('rainbow','~> 2.0')
  # s.add_runtime_dependency('slop','~> 3.5')
end
