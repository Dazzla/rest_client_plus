module RestClientPlus

  module Requests

    def self.post_json_to_url input_url, json_body
      begin
        @response = RestClient.post(input_url, json_body, :content_type => 'application/json')
      rescue Exception => e
        raise e.response
      end
      parse_response(@response)
    end

    def self.put_json_to_url input_url, json_body
      begin
        @response = RestClient.put(input_url, json_body, :content_type => 'application/json')
      rescue Exception => e
        raise e.response
      end
      parse_response(@response)
    end

    def self.get_json_from_url input_url
      begin
        @response = RestClient.get(input_url)
      rescue Exception => e
        raise e.response
      end
      parse_response(@response)
    end

    def self.parse_response(response)
      response.respond_to?(:reverse) ? JSON.parse(response) : response
    end

  end

end