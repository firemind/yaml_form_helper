ActionView::Helpers::FormBuilder.class_eval do
  # YAML TAGS
  # generates form tags that work with the YAML CSS-Framework
  def yaml_text_field(attr, label = attr)
    yaml_tag self.text_field(attr), self.label(attr, label), has_errors(attr)
  end

  def yaml_file_field(attr, label = attr)
    yaml_tag self.file_field(attr), self.label(attr, label), has_errors(attr)
  end

  def yaml_number_field(attr, label = attr)
    yaml_tag self.number_field(attr), self.label(attr, label), has_errors(attr)
  end

  def yaml_text_area(attr, params = {}, label = attr )
    yaml_tag self.text_area(attr, params), self.label(attr, label), has_errors(attr)
  end

  def yaml_password_field(attr, label = attr)
    yaml_tag self.password_field(attr), self.label(attr, label), has_errors(attr)
  end

  def yaml_checkbox(attr, f, label = attr )
    yaml_tag self.password_field(attr), self.label(attr, label), has_errors(attr), 'check'
  end

  def yaml_select(attr, f, options, tag_options = {}, label = attr )
    yaml_tag self.select(attr, options, tag_options), self.label(attr, label), has_errors(attr), 'select'
  end

  def yaml_multi_select(attr, select_options, options = {}, tag_options = {}, label = attr )
    options.merge!({:selected => f.object.send(attr+"_ids")})
    tag_options.merge!({:multiple=>true, :size=>6, :name => "#{f.object.class.to_s.downcase}[#{attr}_ids][]"})
    yaml_tag collection_select(self.object.class.to_s.downcase, attr.pluralize, select_options, :id, :to_s, options, tag_options ), self.label(attr, label), has_errors(attr), 'select'
  end

  def yaml_submit(name = "Submit")
    "<div class='type-button'>
      #{self.submit name, :class => 'submit' }
    </div>".html_safe
  end

  def yaml_tag(tag, label, error = false, type = 'text')
    "<div class='type-#{type} #{ 'error' if error }'>
      #{label}
      #{tag}
    </div>".html_safe
  end

  def has_errors(attr)
    return !self.object.errors[attr].empty?
  end
end
