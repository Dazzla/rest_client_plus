require 'net/http'
require 'webmock'
module WSStubs

  def self.setup_stubs

    WebMock::API.stub_request(:get, 'www.mocks.stub').to_return(RETURN_BODY)

    WebMock::API.stub_request(:post, 'http://www.mocks.stub/').
        with(:body => REQUEST_BODY,
             :request_headers => REQUEST_HEADERS).
        to_return(RETURN_OBJECT)

    WebMock::API.stub_request(:put, 'http://www.mocks.stub/').
        with(:body => REQUEST_BODY,
             :request_headers => REQUEST_HEADERS).
        to_return(RETURN_OBJECT)

    WebMock::API.stub_request(:get, "http://www.mocks.stub/throwerror").
        with(:request_headers => REQUEST_HEADERS).
        to_return(:status => 400, :body => "400 Bad request Error Body", :headers => {})

  end


end

#TODO: refactor into config

