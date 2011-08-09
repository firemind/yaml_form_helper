module YamlFormHelper
  def yaml_form_for(record, type = 'full', form_options = {}, &proc)
    form_options[:html] = {} if ! form_options[:html]
    form_options[:html].merge!(:class => "yform #{type}")
    form_for(record, {}, form_options, &proc)
  end
end
