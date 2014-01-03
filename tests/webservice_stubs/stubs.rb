require_relative 'setup'

#TODO: Put into config

def json_return_body
  {:body =>
       {:one => "1",
        :two => "2"}
  }
end

WebMock::API.stub_request(:get, "www.mocks.stub").to_return(json_return_body)

WebMock::API.stub_request(:post, "http://www.mocks.stub/").
  with(:body => {"body"=>"body"},
        :headers => {'Accept'=>'*/*; q=0.5, application/xml',
                     'Accept-Encoding'=>'gzip, deflate',
                     'Content-Length'=>'9',
                     'Content-Type'=>'application/x-www-form-urlencoded',
                     'User-Agent'=>'Ruby'}).
      to_return(:status => 200, :body => json_return_body, :headers => {})

WebMock::API.stub_request(:put, "http://www.mocks.stub/").
    with(:body => {"body"=>"body"},
         :headers => {'Accept'=>'*/*; q=0.5, application/xml',
                      'Accept-Encoding'=>'gzip, deflate',
                      'Content-Length'=>'9',
                      'Content-Type'=>'application/x-www-form-urlencoded',
                      'User-Agent'=>'Ruby'}).
    to_return(:status => 200, :body => json_return_body, :headers => {})