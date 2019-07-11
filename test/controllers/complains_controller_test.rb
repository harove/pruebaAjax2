require 'test_helper'

class ComplainsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get complains_create_url
    assert_response :success
  end

end
