require 'spec_helper'

describe RequireJs::Configuration do
  subject { described_class.parse path }
  let(:path) { 'inavild/path' }

  it { should eql '' }

  context 'a valid path is given' do
    let(:path) { 'spec/fixtures/config' }

    it { should eql "{\n  \"baseUrl\": \"assets\"\n}\n" }
  end

  context 'the found file is empty' do
    let(:path) { 'spec/fixtures/config_empty' }

    it { should eql '' }
  end
end
