# Encoding: utf-8
#
# Authors:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# Contains the main classes for the client library.

require 'ads_common/api'
require 'ads_common/savon_headers/oauth_header_handler'
require 'dfp_api/api_config'
require 'dfp_api/client_login_header_handler'
require 'dfp_api/credential_handler'
require 'dfp_api/errors'

# Main namespace for all the client library's modules and classes.
module DfpApi

  # Wrapper class that serves as the main point of access for all the API usage.
  #
  # Holds all the services, as well as login credentials.
  #
  class Api < AdsCommon::Api
    # Constructor for API.
    def initialize(provided_config = nil)
      super(provided_config)
      @credential_handler = DfpApi::CredentialHandler.new(@config)
    end

    # Getter for the API service configurations.
    def api_config
      DfpApi::ApiConfig
    end

    private

    # Retrieve DFP HeaderHandler per credential.
    def soap_header_handler(auth_handler, version, namespace)
      auth_method = @config.read('authentication.method', :CLIENTLOGIN)
      handler = case auth_method
        when :CLIENTLOGIN
          DfpApi::ClientLoginHeaderHandler
        when :OAUTH
          AdsCommon::SavonHeaders::OAuthHeaderHandler
        else
          raise AdsCommon::Errors::AuthError,
              "Unknown auth method: %s" % auth_method
      end
      ns = api_config.client_login_config(:HEADER_NAMESPACE_PREAMBLE) +
          version.to_s
      return handler.new(@credential_handler, auth_handler, ns, version)
    end
  end
end
