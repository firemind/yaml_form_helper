# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "yaml_form_helper"
  s.version     = '0.0.1'
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
