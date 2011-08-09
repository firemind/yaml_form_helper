# YamlFormHelper
require 'active_support/dependencies'
require "yaml_form_helper/form_builder_ext"

%w{ helpers }.each do |dir|
  path = File.join(File.dirname(__FILE__), 'app', dir)
  $LOAD_PATH << path
  ActiveSupport::Dependencies.autoload_paths << path
  ActiveSupport::Dependencies.autoload_once_paths.delete(path)
end
