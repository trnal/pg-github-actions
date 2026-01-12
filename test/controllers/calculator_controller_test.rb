require "test_helper"

class CalculatorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "/"
    assert_response :success
  end

  test "compute adds numbers" do
    post "/calculator/compute", params: { a: 2, b: 3, operation: "add" }
    assert_response :success
    assert_match "5", @response.body
  end
end
