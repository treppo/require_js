require 'spec_helper'

describe RequireJs::Builder do
  subject { described_class.new(file, config).build }
  let(:file) { 'file_name' }
  let(:config) { '' }

  it { should_not match /require = {.*/ }
  it { should include '<script data-main="file_name" src="require.js"></script>' }

  context 'configuration options are not empty' do
    let(:config) { '{ "baseUrl": "assets" }' }

    it { should include '<script>require = { "baseUrl": "assets" }</script>'}
    it { should include '<script data-main="file_name" src="require.js"></script>' }
  end
end
