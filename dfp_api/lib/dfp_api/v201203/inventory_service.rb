# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.7.0 on 2012-05-15 17:25:38.

require 'ads_common/savon_service'
require 'dfp_api/v201203/inventory_service_registry'

module DfpApi; module V201203; module InventoryService
  class InventoryService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201203'
      super(config, endpoint, namespace, :v201203)
    end

    def create_ad_unit(*args, &block)
      return execute_action('create_ad_unit', args, &block)
    end

    def create_ad_units(*args, &block)
      return execute_action('create_ad_units', args, &block)
    end

    def get_ad_unit(*args, &block)
      return execute_action('get_ad_unit', args, &block)
    end

    def get_ad_unit_sizes(*args, &block)
      return execute_action('get_ad_unit_sizes', args, &block)
    end

    def get_ad_unit_sizes_by_statement(*args, &block)
      return execute_action('get_ad_unit_sizes_by_statement', args, &block)
    end

    def get_ad_units_by_statement(*args, &block)
      return execute_action('get_ad_units_by_statement', args, &block)
    end

    def perform_ad_unit_action(*args, &block)
      return execute_action('perform_ad_unit_action', args, &block)
    end

    def update_ad_unit(*args, &block)
      return execute_action('update_ad_unit', args, &block)
    end

    def update_ad_units(*args, &block)
      return execute_action('update_ad_units', args, &block)
    end

    private

    def get_service_registry()
      return InventoryServiceRegistry
    end

    def get_module()
      return DfpApi::V201203::InventoryService
    end
  end
end; end; end
