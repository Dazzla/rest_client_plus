require 'test/unit'
require_relative '../lib/rest_client_plus'
require_relative '../tests/webservice_stubs/data'
require_relative 'webservice_stubs/stubs'

class RestClientPlusTest < Test::Unit::TestCase

  def setup
    WSStubs.setup_stubs
  end

  def test_rest_client_plus_is_a_module
    assert_respond_to(RestClientPlus, :constants)
  end

  def test_get_json_from_url
    assert_respond_to(RestClientPlus::Requests.get_json_from_url('http://www.mocks.stub'), :each_key)
  end

  def test_post_json_to_url
    assert_respond_to(RestClientPlus::Requests.post_json_to_url('http://www.mocks.stub', {:body => "body"}), :each_key)
  end

  def test_put_json_to_url
    assert_respond_to(RestClientPlus::Requests.put_json_to_url('http://www.mocks.stub', {:body => "body"}), :each_key)
  end

  def test_parse_response
    assert_respond_to(RestClientPlus::Requests.parse_response({:body =>{:one => "1", :two => "2"}}.to_json), :each_key)
  end

  def test_error_message_from_url
    assert_equal(RestClientPlus::Requests.get_json_from_url('http://www.mocks.stub/throwerror'), request.RuntimeError)
  end


end