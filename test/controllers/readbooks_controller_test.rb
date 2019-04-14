require 'test_helper'

class ReadbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @readbook = readbooks(:one)
  end

  test "should get index" do
    get readbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_readbook_url
    assert_response :success
  end

  test "should create readbook" do
    assert_difference('Readbook.count') do
      post readbooks_url, params: { readbook: { age: @readbook.age, name: @readbook.name } }
    end

    assert_redirected_to readbook_url(Readbook.last)
  end

  test "should show readbook" do
    get readbook_url(@readbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_readbook_url(@readbook)
    assert_response :success
  end

  test "should update readbook" do
    patch readbook_url(@readbook), params: { readbook: { age: @readbook.age, name: @readbook.name } }
    assert_redirected_to readbook_url(@readbook)
  end

  test "should destroy readbook" do
    assert_difference('Readbook.count', -1) do
      delete readbook_url(@readbook)
    end

    assert_redirected_to readbooks_url
  end
end
