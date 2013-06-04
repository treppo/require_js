module RequireJs
  def self.include_tag(file_name)
    "<script data-main=\"#{file_name}\" src=\"require.js\"></script>"
  end
end
