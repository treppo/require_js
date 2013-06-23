require 'json'

module RequireJs
  class Configuration
    def self.parse(path)
      file_name = File.expand_path(File.dirname(__FILE__) + "../../../#{path}.json")

      if File.exists? file_name
        File.read file_name
      else
        ""
      end
    end
  end
end
