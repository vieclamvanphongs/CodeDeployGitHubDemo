require 'test_helper'

class UngtuyensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ungtuyen = ungtuyens(:one)
  end

  test "should get index" do
    get ungtuyens_url
    assert_response :success
  end

  test "should get new" do
    get new_ungtuyen_url
    assert_response :success
  end

  test "should create ungtuyen" do
    assert_difference('Ungtuyen.count') do
      post ungtuyens_url, params: { ungtuyen: { hoso: @ungtuyen.hoso } }
    end

    assert_redirected_to ungtuyen_url(Ungtuyen.last)
  end

  test "should show ungtuyen" do
    get ungtuyen_url(@ungtuyen)
    assert_response :success
  end

  test "should get edit" do
    get edit_ungtuyen_url(@ungtuyen)
    assert_response :success
  end

  test "should update ungtuyen" do
    patch ungtuyen_url(@ungtuyen), params: { ungtuyen: { hoso: @ungtuyen.hoso } }
    assert_redirected_to ungtuyen_url(@ungtuyen)
  end

  test "should destroy ungtuyen" do
    assert_difference('Ungtuyen.count', -1) do
      delete ungtuyen_url(@ungtuyen)
    end

    assert_redirected_to ungtuyens_url
  end
end
