require 'test/unit'
require_relative '../lib/rest_client_plus'

class RestClientPlusTest < Test::Unit::TestCase

  def test_rest_client_plus_is_a_module
    assert_respond_to(RestClientPlus, :constants)
  end

end