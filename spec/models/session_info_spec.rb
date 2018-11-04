=begin
#CBRAIN API

#API for interacting with the CBRAIN Platform

OpenAPI spec version: 5.1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CbrainClient::SessionInfo
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SessionInfo' do
  before do
    # run before each test
    @instance = CbrainClient::SessionInfo.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SessionInfo' do
    it 'should create an instance of SessionInfo' do
      expect(@instance).to be_instance_of(CbrainClient::SessionInfo)
    end
  end
  describe 'test attribute "user_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "cbrain_api_token"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

