require_relative 'setup'
require_relative 'data'

#TODO: refactor into config

WebMock::API.stub_request(:get, "www.mocks.stub").to_return(RETURN_BODY)

WebMock::API.stub_request(:any, "http://www.mocks.stub/").
  with(:body => REQUEST_BODY,
        :request_headers => REQUEST_HEADERS).
      to_return(RETURN_OBJECT)