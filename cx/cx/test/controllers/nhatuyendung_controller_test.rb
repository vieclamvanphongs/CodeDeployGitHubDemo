require 'test_helper'

class NhatuyendungControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nhatuyendung_index_url
    assert_response :success
  end

end
