require 'test_helper'

class ThumailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thumail = thumails(:one)
  end

  test "should get index" do
    get thumails_url
    assert_response :success
  end

  test "should get new" do
    get new_thumail_url
    assert_response :success
  end

  test "should create thumail" do
    assert_difference('Thumail.count') do
      post thumails_url, params: { thumail: { email: @thumail.email, name: @thumail.name } }
    end

    assert_redirected_to thumail_url(Thumail.last)
  end

  test "should show thumail" do
    get thumail_url(@thumail)
    assert_response :success
  end

  test "should get edit" do
    get edit_thumail_url(@thumail)
    assert_response :success
  end

  test "should update thumail" do
    patch thumail_url(@thumail), params: { thumail: { email: @thumail.email, name: @thumail.name } }
    assert_redirected_to thumail_url(@thumail)
  end

  test "should destroy thumail" do
    assert_difference('Thumail.count', -1) do
      delete thumail_url(@thumail)
    end

    assert_redirected_to thumails_url
  end
end
