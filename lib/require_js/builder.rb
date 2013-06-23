module RequireJs
  class Builder
    def initialize(file, config)
      @config = config
      @file = file
    end

    def build
      ''.tap do |output|
        output << "<script>require = #{config}</script>" unless config.empty?
        output << "<script data-main=\"#{file}\" src=\"require.js\"></script>"
      end
    end

    private
    attr_reader :file, :config
  end
end
