require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get allcontacts" do
    get static_pages_allcontacts_url
    assert_response :success
  end
end
