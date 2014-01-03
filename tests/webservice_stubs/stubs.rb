require 'net/http'
require 'webmock'
module WSStubs

  def self.setup_stubs

    WebMock::API.stub_request(:get, "www.mocks.stub").to_return(RETURN_BODY)

    WebMock::API.stub_request(:any, "http://www.mocks.stub/").
        with(:body => REQUEST_BODY,
             :request_headers => REQUEST_HEADERS).
        to_return(RETURN_OBJECT)

  end


end

#TODO: refactor into config

