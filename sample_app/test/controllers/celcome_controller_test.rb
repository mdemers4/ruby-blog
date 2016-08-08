require 'test_helper'

class CelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get celcome_index_url
    assert_response :success
  end

end
