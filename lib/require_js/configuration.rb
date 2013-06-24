require 'json'

module RequireJs
  class Configuration
    def self.parse(path)
      new(path).parse
    end

    def initialize(path)
      @path = path
    end

    def parse
      raise ConfigFileMissingError unless File.exists? file_name
      File.read file_name
    end

    private
    attr_reader :path

    def file_name
      File.expand_path(File.dirname(__FILE__) + "../../../#{path}.json")
    end
  end
end
