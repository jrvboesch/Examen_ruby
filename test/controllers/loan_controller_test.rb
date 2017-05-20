require 'test_helper'

class LoanControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get loan_index_url
    assert_response :success
  end

  test "should get new" do
    get loan_new_url
    assert_response :success
  end

  test "should get show" do
    get loan_show_url
    assert_response :success
  end

  test "should get edit" do
    get loan_edit_url
    assert_response :success
  end

end
