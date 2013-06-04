require 'spec_helper'

describe RequireJs do
  describe '#include_tag' do
    it 'constructs the require–js script tag for the file' do
      expect(RequireJs.include_tag 'main').to eql '<script data-main="main" src="require.js"></script>'
    end
  end
end
