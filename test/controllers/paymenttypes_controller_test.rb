require "test_helper"

class PaymenttypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paymenttype = paymenttypes(:one)
  end

  test "should get index" do
    get paymenttypes_url
    assert_response :success
  end

  test "should get new" do
    get new_paymenttype_url
    assert_response :success
  end

  test "should create paymenttype" do
    assert_difference('Paymenttype.count') do
      post paymenttypes_url, params: { paymenttype: { crypto: @paymenttype.crypto, cryptourl: @paymenttype.cryptourl, currentprice: @paymenttype.currentprice, paymentname: @paymenttype.paymentname } }
    end

    assert_redirected_to paymenttype_url(Paymenttype.last)
  end

  test "should show paymenttype" do
    get paymenttype_url(@paymenttype)
    assert_response :success
  end

  test "should get edit" do
    get edit_paymenttype_url(@paymenttype)
    assert_response :success
  end

  test "should update paymenttype" do
    patch paymenttype_url(@paymenttype), params: { paymenttype: { crypto: @paymenttype.crypto, cryptourl: @paymenttype.cryptourl, currentprice: @paymenttype.currentprice, paymentname: @paymenttype.paymentname } }
    assert_redirected_to paymenttype_url(@paymenttype)
  end

  test "should destroy paymenttype" do
    assert_difference('Paymenttype.count', -1) do
      delete paymenttype_url(@paymenttype)
    end

    assert_redirected_to paymenttypes_url
  end
end
