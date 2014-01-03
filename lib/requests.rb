module RestClientPlus

  module Requests

    def self.post_json_to_url input_url, json_body
      parse_response(RestClient.post(input_url, json_body, :content_type => 'application/json'))
    end

    def self.put_json_to_url input_url, json_body
      parse_response(RestClient.put(input_url, json_body, :content_type => 'application/json'))
    end

    def self.get_json_from_url input_url
      parse_response(RestClient.get(input_url))
    end


private

    def self.parse_response(response)
      JSON.parse response.body if response.body.respond_to?(:reverse)
      response.body
    end

  end

end