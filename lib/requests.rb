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

    def self.parse_response(response)
     response.respond_to?(:reverse) ? JSON.parse(response) : response
    end

  end

end