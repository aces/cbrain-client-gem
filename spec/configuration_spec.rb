=begin
#CBRAIN API

#API for interacting with the CBRAIN Platform

OpenAPI spec version: 5.1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'

describe CbrainClient::Configuration do
  let(:config) { CbrainClient::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    #require 'URI'
    #uri = URI.parse("http://localhost:3000")
    #CbrainClient.configure do |c|
    #  c.host = uri.host
    #  c.base_path = uri.path
    #end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      #expect(config.base_url).to eq("http://localhost:3000")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        #expect(config.base_url).to eq("http://localhost:3000")
      end
    end
  end
end
