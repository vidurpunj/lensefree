require "test_helper"

class SpecsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get specs_index_url
    assert_response :success
  end
end
