# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.7.0 on 2012-05-15 17:26:20.

require 'dfp_api/errors'

module DfpApi; module V201204; module NetworkService
  class NetworkServiceRegistry
    NETWORKSERVICE_METHODS = {:get_all_networks=>{:input=>[], :output=>{:name=>"get_all_networks_response", :fields=>[{:name=>:rval, :type=>"Network", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_current_network=>{:input=>[], :output=>{:name=>"get_current_network_response", :fields=>[{:name=>:rval, :type=>"Network", :min_occurs=>0, :max_occurs=>1}]}}, :make_test_network=>{:input=>[], :output=>{:name=>"make_test_network_response", :fields=>[{:name=>:rval, :type=>"Network", :min_occurs=>0, :max_occurs=>1}]}}, :update_network=>{:input=>[{:name=>:network, :type=>"Network", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"update_network_response", :fields=>[{:name=>:rval, :type=>"Network", :min_occurs=>0, :max_occurs=>1}]}}}
    NETWORKSERVICE_TYPES = {:Authentication=>{:fields=>[{:name=>:authentication_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ClientLogin=>{:fields=>[{:name=>:token, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :Network=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:display_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:property_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:effective_root_ad_unit_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:content_browse_custom_targeting_key_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_test, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :OAuth=>{:fields=>[{:name=>:parameters, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:authentication, :type=>"Authentication", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}}
    NETWORKSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return NETWORKSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return NETWORKSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return NETWORKSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end
