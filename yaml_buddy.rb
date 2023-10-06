# frozen_string_literal: true

require 'yaml'
# Module that can be included (mixin) to take and output Yaml data
module YamlBuddy
  # def take_yaml(yaml) : takes a yaml string and converts it into a data structure in @data.

  def take_yaml(yaml)
    @data = YAML.safe_load(yaml)
  end

  # def to_yaml : converts any data in @data into a yaml string.

  def to_yaml
    @data.to_yaml
  end
end
