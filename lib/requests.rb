module RestClientPlus

  module Requests

    def self.post_json_to_url input_url, json_body
      rsp = parse_response(RestClient.post(input_url, json_body, :content_type => 'application/json'))
      $stdout.puts "RAW: #{rsp.class}"
      rsp
    end

    def self.put_json_to_url input_url, json_body
      rsp = parse_response(RestClient.put(input_url, json_body, :content_type => 'application/json'))
      $stdout.puts "RAW: #{rsp.class}"
      rsp
    end

    def self.get_json_from_url input_url
      rsp = parse_response(RestClient.get(input_url))
      $stdout.puts "RAW: #{rsp.class}"
      rsp
    end

    def self.parse_response(response)
      rsp = response.respond_to?(:reverse) ? JSON.parse(response) : response
      $stdout.puts "Parsed: #{rsp.class}"
      return rsp
    end

  end

end