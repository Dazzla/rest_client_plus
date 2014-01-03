module RestClientPlus

  module Requests

    def self.post_json_to_url input_url, json_body
      response = RestClient.post(input_url, json_body, :content_type => 'application/json')
      response.code.should == 200
      parse_response_body(response)
    end

    def self.put_json_to_url input_url, json_body
      response = RestClient.put(input_url, json_body, :content_type => 'application/json')
      response.code.should == 200
      parse_response_body(response)
    end

    def self.get_json_from_url input_url
      response = RestClient.get(input_url)
      response.code.should == 200
      parse_response_body(response)
    end
	
	private

    def self.parse_response_body(response)
      JSON.parse response.body
    end

  end
  
end
