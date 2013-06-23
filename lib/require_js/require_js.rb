require 'require_js/builder'
require 'require_js/configuration'

module RequireJs
  def self.include_tag(options = {})
    file = options.fetch :file, 'main'
    config_path = options.fetch :config_path, 'config/require_js'

    Builder.new(file, config(config_path)).build
  end

  private
  def self.config(config_path)
    Configuration.parse config_path
  end
end
