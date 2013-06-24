require 'spec_helper'

describe RequireJs::Configuration do
  let(:configuration) { described_class }

  context 'an invalid path is given' do
    let(:path) { 'inavild/path' }

    it 'should raise an error' do
      expect { configuration.parse path }.to raise_error RequireJs::ConfigFileMissingError
    end
  end

  context 'a valid path is given' do
    subject { configuration.parse path }
    let(:path) { 'spec/fixtures/config' }

    it { should eql "{\n  \"baseUrl\": \"assets\"\n}\n" }
  end

  context 'the found file is empty' do
    subject { configuration.parse path }
    let(:path) { 'spec/fixtures/config_empty' }

    it { should eql '' }
  end
end
