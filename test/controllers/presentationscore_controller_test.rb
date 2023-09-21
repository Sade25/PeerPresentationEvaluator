require "test_helper"

class PresentationscoreControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get presentationscore_new_url
    assert_response :success
  end

  test "should get remove" do
    get presentationscore_remove_url
    assert_response :success
  end
end
