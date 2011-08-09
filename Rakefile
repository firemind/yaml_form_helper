require 'rake'
require 'rake/testtask'
require 'rdoc/task'
require 'rubygems/package_task'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the yaml_form_helper plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |s|
  s.name        = "yaml_form_helper"
  s.version     = '0.0.3'
  s.authors     = ["Michael Gerber"]
  s.email       = ["mike@citrin.ch"]
  s.homepage    = "https://github.com/servasat/yaml_form_helper"
  s.summary     = %q{Rails Plugin for YAML Forms}
  s.description = %q{The YamlFormHelper is a Rails Plugin that extends the FormBuilder Class with methods to create form tags for the HTML/CSS Framework YAML (http://www.yaml.de/)}

  s.rubyforge_project = "yaml_form_helper"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
  test.rcov_opts << '--exclude "gems/*"'
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "yaml_form_helper #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
