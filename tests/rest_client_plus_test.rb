require 'test/unit'
require_relative '../lib/rest_client_plus'
require_relative '../tests/webservice_stubs/setup'

class RestClientPlusTest < Test::Unit::TestCase

  def setup

  end

  def test_rest_client_plus_is_a_module
    assert_respond_to(RestClientPlus, :constants)
  end

  def test_get_json_from_url
    assert_respond_to(RestClientPlus::Requests.get_json_from_url('http://www.mocks.stub'), :each_key)
  end


end