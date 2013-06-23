require 'spec_helper'
require 'require_js/configuration'
require 'require_js/builder'

describe RequireJs do
  describe '#include_tag' do
    let(:options) { {} }
    let(:include_tag) { described_class.include_tag options }
    let(:config) { '' }
    let(:builder) { double build: '' }

    before do
      RequireJs::Configuration.stub(:parse) { config }
      RequireJs::Builder.stub(:new) { builder }
    end

    shared_examples 'a builder' do
      context 'without given filename' do
        it 'calls the builder with the default file name and the configuration' do
          expect(RequireJs::Builder).to receive(:new).with 'main', config
          expect(builder).to receive(:build)
          include_tag
        end
      end

      context 'with given filename' do
        let(:options) { { file: 'filename' } }

        it 'calls the builder with that file name and the configuration' do
          expect(RequireJs::Builder).to receive(:new).with 'filename', config
          expect(builder).to receive(:build)
          include_tag
        end
      end
    end

    context 'configuration path' do
      let(:config) { '{ "baseUrl": "assets" }' }

      context 'is not given' do
        it 'uses the default configuration path' do
          expect(RequireJs::Configuration).to receive(:parse).with 'config/require_js'
          include_tag
        end

        it_behaves_like 'a builder'
      end

      context 'is given' do
        let(:options) { { config_path: 'fixtures/config' } }

        it 'uses that path' do
          expect(RequireJs::Configuration).to receive(:parse).with 'fixtures/config'
          include_tag
        end

        it_behaves_like 'a builder'
      end
    end
  end
end
