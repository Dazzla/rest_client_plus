JSON_RETURN_BODY =  {:body =>

                         {:one => "1",
                          :two => "2"}

                    }
RETURN_HEADERS = {}

RETURN_OBJECT = {:status => 200, :body => JSON_RETURN_BODY, :headers => RETURN_HEADERS}

REQUEST_HEADERS =
    {'Accept'=>'*/*; q=0.5, application/xml',
     'Accept-Encoding'=>'gzip, deflate',
     'Content-Length'=>'9',
     'Content-Type'=>'application/x-www-form-urlencoded',
     'User-Agent'=>'Ruby'
    }

REQUEST_BODY = {"body"=>"body"}

RETURN_BODY =
  {:body =>
       {:one => "1",
        :two => "2"}
  }

