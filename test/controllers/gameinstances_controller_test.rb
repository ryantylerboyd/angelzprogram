require "test_helper"

class GameinstancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gameinstance = gameinstances(:one)
  end

  test "should get index" do
    get gameinstances_url
    assert_response :success
  end

  test "should get new" do
    get new_gameinstance_url
    assert_response :success
  end

  test "should create gameinstance" do
    assert_difference('Gameinstance.count') do
      post gameinstances_url, params: { gameinstance: { betamount: @gameinstance.betamount, commission: @gameinstance.commission, crypto: @gameinstance.crypto, cryptoprice: @gameinstance.cryptoprice, currentprice: @gameinstance.currentprice, gametype: @gameinstance.gametype, multiplier: @gameinstance.multiplier, outcome: @gameinstance.outcome, paymentname: @gameinstance.paymentname, playername: @gameinstance.playername, result: @gameinstance.result, sessionid: @gameinstance.sessionid } }
    end

    assert_redirected_to gameinstance_url(Gameinstance.last)
  end

  test "should show gameinstance" do
    get gameinstance_url(@gameinstance)
    assert_response :success
  end

  test "should get edit" do
    get edit_gameinstance_url(@gameinstance)
    assert_response :success
  end

  test "should update gameinstance" do
    patch gameinstance_url(@gameinstance), params: { gameinstance: { betamount: @gameinstance.betamount, commission: @gameinstance.commission, crypto: @gameinstance.crypto, cryptoprice: @gameinstance.cryptoprice, currentprice: @gameinstance.currentprice, gametype: @gameinstance.gametype, multiplier: @gameinstance.multiplier, outcome: @gameinstance.outcome, paymentname: @gameinstance.paymentname, playername: @gameinstance.playername, result: @gameinstance.result, sessionid: @gameinstance.sessionid } }
    assert_redirected_to gameinstance_url(@gameinstance)
  end

  test "should destroy gameinstance" do
    assert_difference('Gameinstance.count', -1) do
      delete gameinstance_url(@gameinstance)
    end

    assert_redirected_to gameinstances_url
  end
end
