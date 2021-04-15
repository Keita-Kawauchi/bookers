require 'test_helper'

class NewbookControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get newbook_new_url
    assert_response :success
  end

end
