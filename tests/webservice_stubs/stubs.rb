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

    stub_request(:get, 'www.mocks.stub/throwerror').to_return(:status => [500, "Internal Server Error"])
    req = Net::HTTP::Get.new("/throwerror")
    Net::HTTP.start("www.mocks.stub") {|http| http.request(req)}.message

  end


end

#TODO: refactor into config

