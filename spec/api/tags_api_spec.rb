=begin
#CBRAIN API

#API for interacting with the CBRAIN Platform

OpenAPI spec version: 5.1.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'spec_helper'
require 'json'

# Unit tests for CbrainClient::TagsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TagsApi' do
  before do
    # run before each test
    @instance = CbrainClient::TagsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TagsApi' do
    it 'should create an instance of TagsApi' do
      expect(@instance).to be_instance_of(CbrainClient::TagsApi)
    end
  end

  # unit tests for tags_get
  # Get a list of the tags currently in CBRAIN.
  # This method returns a list of tag objects. 
  # @param [Hash] opts the optional parameters
  # @return [Array<Tag>]
  describe 'tags_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for tags_id_delete
  # Delete a tag.
  # Delete the tag specified by the ID parameter.
  # @param id ID of the tag to delete.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'tags_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for tags_id_get
  # Get one tag.
  # Returns a single tag with the ID specified. 
  # @param id The ID of the tag to get.
  # @param [Hash] opts the optional parameters
  # @return [Tag]
  describe 'tags_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for tags_id_put
  # Update a tag.
  # Update the tag specified by the ID parameter.
  # @param id ID of the tag to update.
  # @param tag_mod_req 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'tags_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for tags_post
  # Create a new tag.
  # Create a new tag in CBRAIN. 
  # @param tag_mod_req 
  # @param [Hash] opts the optional parameters
  # @return [Tag]
  describe 'tags_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
