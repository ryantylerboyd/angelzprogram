require "test_helper"

class GametypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gametype = gametypes(:one)
  end

  test "should get index" do
    get gametypes_url
    assert_response :success
  end

  test "should get new" do
    get new_gametype_url
    assert_response :success
  end

  test "should create gametype" do
    assert_difference('Gametype.count') do
      post gametypes_url, params: { gametype: { commission: @gametype.commission, gametype: @gametype.gametype, multiplier: @gametype.multiplier } }
    end

    assert_redirected_to gametype_url(Gametype.last)
  end

  test "should show gametype" do
    get gametype_url(@gametype)
    assert_response :success
  end

  test "should get edit" do
    get edit_gametype_url(@gametype)
    assert_response :success
  end

  test "should update gametype" do
    patch gametype_url(@gametype), params: { gametype: { commission: @gametype.commission, gametype: @gametype.gametype, multiplier: @gametype.multiplier } }
    assert_redirected_to gametype_url(@gametype)
  end

  test "should destroy gametype" do
    assert_difference('Gametype.count', -1) do
      delete gametype_url(@gametype)
    end

    assert_redirected_to gametypes_url
  end
end
