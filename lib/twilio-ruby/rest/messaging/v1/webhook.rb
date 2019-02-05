##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
# 
# frozen_string_literal: true

module Twilio
  module REST
    class Messaging < Domain
      class V1 < Version
        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class WebhookList < ListResource
          ##
          # Initialize the WebhookList
          # @param [Version] version Version that contains the resource
          # @return [WebhookList] WebhookList
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}
          end

          ##
          # Provide a user friendly representation
          def to_s
            '#<Twilio.Messaging.V1.WebhookList>'
          end
        end

        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class WebhookPage < Page
          ##
          # Initialize the WebhookPage
          # @param [Version] version Version that contains the resource
          # @param [Response] response Response from the API
          # @param [Hash] solution Path solution for the resource
          # @return [WebhookPage] WebhookPage
          def initialize(version, response, solution)
            super(version, response)

            # Path Solution
            @solution = solution
          end

          ##
          # Build an instance of WebhookInstance
          # @param [Hash] payload Payload response from the API
          # @return [WebhookInstance] WebhookInstance
          def get_instance(payload)
            WebhookInstance.new(@version, payload, )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '<Twilio.Messaging.V1.WebhookPage>'
          end
        end

        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class WebhookContext < InstanceContext
          ##
          # Initialize the WebhookContext
          # @param [Version] version Version that contains the resource
          # @return [WebhookContext] WebhookContext
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}
            @uri = "/Sessions/Webhooks"
          end

          ##
          # Fetch a WebhookInstance
          # @return [WebhookInstance] Fetched WebhookInstance
          def fetch
            params = Twilio::Values.of({})

            payload = @version.fetch(
                'GET',
                @uri,
                params,
            )

            WebhookInstance.new(@version, payload, )
          end

          ##
          # Update the WebhookInstance
          # @param [String] webhook_method The HTTP method to be used when sending a webhook
          #   request.
          # @param [String] webhook_filters The list of webhook event triggers that are
          #   enabled for this Service.
          # @param [String] pre_webhook_url The absolute url the pre-event webhook request
          #   should be sent to.
          # @param [String] post_webhook_url The absolute url the post-event webhook request
          #   should be sent to.
          # @param [String] pre_webhook_retry_count The number of retries in case of
          #   pre-event webhook request failures. Maximum 3 retries are allowed, the default
          #   value is 0.
          # @param [String] post_webhook_retry_count The number of retries in case of
          #   post-event webhook request failures. Maximum 3 retries are allowed, the default
          #   value is 0.
          # @return [WebhookInstance] Updated WebhookInstance
          def update(webhook_method: :unset, webhook_filters: :unset, pre_webhook_url: :unset, post_webhook_url: :unset, pre_webhook_retry_count: :unset, post_webhook_retry_count: :unset)
            data = Twilio::Values.of({
                'WebhookMethod' => webhook_method,
                'WebhookFilters' => Twilio.serialize_list(webhook_filters) { |e| e },
                'PreWebhookUrl' => pre_webhook_url,
                'PostWebhookUrl' => post_webhook_url,
                'PreWebhookRetryCount' => pre_webhook_retry_count,
                'PostWebhookRetryCount' => post_webhook_retry_count,
            })

            payload = @version.update(
                'POST',
                @uri,
                data: data,
            )

            WebhookInstance.new(@version, payload, )
          end

          ##
          # Provide a user friendly representation
          def to_s
            context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.Messaging.V1.WebhookContext #{context}>"
          end
        end

        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class WebhookInstance < InstanceResource
          ##
          # Initialize the WebhookInstance
          # @param [Version] version Version that contains the resource
          # @param [Hash] payload payload that contains response from Twilio
          # @return [WebhookInstance] WebhookInstance
          def initialize(version, payload)
            super(version)

            # Marshaled Properties
            @properties = {
                'account_sid' => payload['account_sid'],
                'service_sid' => payload['service_sid'],
                'webhook_method' => payload['webhook_method'],
                'webhook_filters' => payload['webhook_filters'],
                'pre_webhook_url' => payload['pre_webhook_url'],
                'post_webhook_url' => payload['post_webhook_url'],
                'pre_webhook_retry_count' => payload['pre_webhook_retry_count'].to_i,
                'post_webhook_retry_count' => payload['post_webhook_retry_count'].to_i,
                'url' => payload['url'],
            }

            # Context
            @instance_context = nil
            @params = {}
          end

          ##
          # Generate an instance context for the instance, the context is capable of
          # performing various actions.  All instance actions are proxied to the context
          # @return [WebhookContext] WebhookContext for this WebhookInstance
          def context
            unless @instance_context
              @instance_context = WebhookContext.new(@version, )
            end
            @instance_context
          end

          ##
          # @return [String] The unique id of the Account responsible for this session.
          def account_sid
            @properties['account_sid']
          end

          ##
          # @return [String] The unique id of the Chat Service this session belongs to.
          def service_sid
            @properties['service_sid']
          end

          ##
          # @return [String] The HTTP method to be used when sending a webhook request.
          def webhook_method
            @properties['webhook_method']
          end

          ##
          # @return [String] The list of webhook event triggers that are enabled for this Service.
          def webhook_filters
            @properties['webhook_filters']
          end

          ##
          # @return [String] The absolute url the pre-event webhook request should be sent to.
          def pre_webhook_url
            @properties['pre_webhook_url']
          end

          ##
          # @return [String] The absolute url the post-event webhook request should be sent to.
          def post_webhook_url
            @properties['post_webhook_url']
          end

          ##
          # @return [String] The number of retries in case of pre-event webhook request failures.
          def pre_webhook_retry_count
            @properties['pre_webhook_retry_count']
          end

          ##
          # @return [String] The number of retries in case of post-event webhook request failures.
          def post_webhook_retry_count
            @properties['post_webhook_retry_count']
          end

          ##
          # @return [String] An absolute URL for this webhook.
          def url
            @properties['url']
          end

          ##
          # Fetch a WebhookInstance
          # @return [WebhookInstance] Fetched WebhookInstance
          def fetch
            context.fetch
          end

          ##
          # Update the WebhookInstance
          # @param [String] webhook_method The HTTP method to be used when sending a webhook
          #   request.
          # @param [String] webhook_filters The list of webhook event triggers that are
          #   enabled for this Service.
          # @param [String] pre_webhook_url The absolute url the pre-event webhook request
          #   should be sent to.
          # @param [String] post_webhook_url The absolute url the post-event webhook request
          #   should be sent to.
          # @param [String] pre_webhook_retry_count The number of retries in case of
          #   pre-event webhook request failures. Maximum 3 retries are allowed, the default
          #   value is 0.
          # @param [String] post_webhook_retry_count The number of retries in case of
          #   post-event webhook request failures. Maximum 3 retries are allowed, the default
          #   value is 0.
          # @return [WebhookInstance] Updated WebhookInstance
          def update(webhook_method: :unset, webhook_filters: :unset, pre_webhook_url: :unset, post_webhook_url: :unset, pre_webhook_retry_count: :unset, post_webhook_retry_count: :unset)
            context.update(
                webhook_method: webhook_method,
                webhook_filters: webhook_filters,
                pre_webhook_url: pre_webhook_url,
                post_webhook_url: post_webhook_url,
                pre_webhook_retry_count: pre_webhook_retry_count,
                post_webhook_retry_count: post_webhook_retry_count,
            )
          end

          ##
          # Provide a user friendly representation
          def to_s
            values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.Messaging.V1.WebhookInstance #{values}>"
          end

          ##
          # Provide a detailed, user friendly representation
          def inspect
            values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.Messaging.V1.WebhookInstance #{values}>"
          end
        end
      end
    end
  end
end