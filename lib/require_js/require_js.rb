require 'require_js/builder'
require 'require_js/configuration'

module RequireJs
  extend self

  def include_tag(options = {})
    RequireJs.new(options).build
  end

  class RequireJs
    FILE_NAME = 'main'
    CONFIG_PATH = 'config/require_js'

    def initialize(options = {})
      @file = options.fetch :file, FILE_NAME
      @config_path = options.fetch :config_path, CONFIG_PATH
    end

    def build
      Builder.new(file, get_config_from_path).build
    end

    private
    attr_reader :file, :config_path

    def get_config_from_path
      Configuration.parse config_path
    end
  end
end
