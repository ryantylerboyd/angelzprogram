require "test_helper"

class CustomerdataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customerdatum = customerdata(:one)
  end

  test "should get index" do
    get customerdata_url
    assert_response :success
  end

  test "should get new" do
    get new_customerdatum_url
    assert_response :success
  end

  test "should create customerdatum" do
    assert_difference('Customerdatum.count') do
      post customerdata_url, params: { customerdatum: { betamount: @customerdatum.betamount, commission: @customerdatum.commission, currencyconvert: @customerdatum.currencyconvert, gametype: @customerdatum.gametype, multiplier: @customerdatum.multiplier, netincome: @customerdatum.netincome, outcome: @customerdatum.outcome, paymenttype: @customerdatum.paymenttype, playername: @customerdatum.playername } }
    end

    assert_redirected_to customerdatum_url(Customerdatum.last)
  end

  test "should show customerdatum" do
    get customerdatum_url(@customerdatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_customerdatum_url(@customerdatum)
    assert_response :success
  end

  test "should update customerdatum" do
    patch customerdatum_url(@customerdatum), params: { customerdatum: { betamount: @customerdatum.betamount, commission: @customerdatum.commission, currencyconvert: @customerdatum.currencyconvert, gametype: @customerdatum.gametype, multiplier: @customerdatum.multiplier, netincome: @customerdatum.netincome, outcome: @customerdatum.outcome, paymenttype: @customerdatum.paymenttype, playername: @customerdatum.playername } }
    assert_redirected_to customerdatum_url(@customerdatum)
  end

  test "should destroy customerdatum" do
    assert_difference('Customerdatum.count', -1) do
      delete customerdatum_url(@customerdatum)
    end

    assert_redirected_to customerdata_url
  end
end
