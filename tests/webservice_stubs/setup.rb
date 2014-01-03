require 'net/http'
require 'webmock'

#TODO: Put into config

def json_return_body
  {:body =>
       {:one => "1",
        :two => "2"}
  }
end

WebMock::API.stub_request(:get, "www.mocks.stub").to_return(json_return_body)