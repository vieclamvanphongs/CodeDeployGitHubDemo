require 'test_helper'

class VieclamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vieclam = vieclams(:one)
  end

  test "should get index" do
    get vieclams_url
    assert_response :success
  end

  test "should get new" do
    get new_vieclam_url
    assert_response :success
  end

  test "should create vieclam" do
    assert_difference('Vieclam.count') do
      post vieclams_url, params: { vieclam: { congty: @vieclam.congty, diadiem: @vieclam.diadiem, email: @vieclam.email, mota: @vieclam.mota, mucluong: @vieclam.mucluong, ngaydangtuyen: @vieclam.ngaydangtuyen, ngayhethan: @vieclam.ngayhethan, nghanhnghe: @vieclam.nghanhnghe, nophoso: @vieclam.nophoso, quyenloi: @vieclam.quyenloi, tencv: @vieclam.tencv, vitri: @vieclam.vitri, yeucau: @vieclam.yeucau } }
    end

    assert_redirected_to vieclam_url(Vieclam.last)
  end

  test "should show vieclam" do
    get vieclam_url(@vieclam)
    assert_response :success
  end

  test "should get edit" do
    get edit_vieclam_url(@vieclam)
    assert_response :success
  end

  test "should update vieclam" do
    patch vieclam_url(@vieclam), params: { vieclam: { congty: @vieclam.congty, diadiem: @vieclam.diadiem, email: @vieclam.email, mota: @vieclam.mota, mucluong: @vieclam.mucluong, ngaydangtuyen: @vieclam.ngaydangtuyen, ngayhethan: @vieclam.ngayhethan, nghanhnghe: @vieclam.nghanhnghe, nophoso: @vieclam.nophoso, quyenloi: @vieclam.quyenloi, tencv: @vieclam.tencv, vitri: @vieclam.vitri, yeucau: @vieclam.yeucau } }
    assert_redirected_to vieclam_url(@vieclam)
  end

  test "should destroy vieclam" do
    assert_difference('Vieclam.count', -1) do
      delete vieclam_url(@vieclam)
    end

    assert_redirected_to vieclams_url
  end
end
