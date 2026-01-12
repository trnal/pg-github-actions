require "test_helper"

class CalculatorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get calculator_index_url
    assert_response :success
  end

  test "should get result" do
    get calculator_result_url
    assert_response :success
  end
end
