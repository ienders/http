# frozen_string_literal: true

module HTTP
  # Generic error
  class Error < StandardError; end

  # Generic Connection error
  class ConnectionError < Error
    attr_reader :proxy_headers

    def initialize(message = '', proxy_headers = {})
      @proxy_headers = proxy_headers
      super(message)
    end
  end

  # Generic Request error
  class RequestError < Error; end

  # Generic Response error
  class ResponseError < Error; end

  # Requested to do something when we're in the wrong state
  class StateError < ResponseError; end

  # Generic Timeout error
  class TimeoutError < Error; end

  # Header value is of unexpected format (similar to Net::HTTPHeaderSyntaxError)
  class HeaderError < Error; end
end
