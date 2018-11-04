=begin
#CBRAIN API

#API for interacting with the CBRAIN Platform

OpenAPI spec version: 5.1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for CbrainClient::BourreauxApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BourreauxApi' do
  before do
    # run before each test
    @instance = CbrainClient::BourreauxApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BourreauxApi' do
    it 'should create an instance of BourreauxApi' do
      expect(@instance).to be_instance_of(CbrainClient::BourreauxApi)
    end
  end

  # unit tests for bourreaux_get
  # Get a list of the Bourreaux available to be used by the current user.
  # This method returns a list of Bourreau objects. 
  # @param [Hash] opts the optional parameters
  # @return [Array<Bourreau>]
  describe 'bourreaux_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bourreaux_id_get
  # Get information about a Bourreau.
  # This method returns a single Bourreau object based on the ID parameter. 
  # @param id ID of the Bourreau to get information on.
  # @param [Hash] opts the optional parameters
  # @return [Bourreau]
  describe 'bourreaux_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
