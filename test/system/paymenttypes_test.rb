require "application_system_test_case"

class PaymenttypesTest < ApplicationSystemTestCase
  setup do
    @paymenttype = paymenttypes(:one)
  end

  test "visiting the index" do
    visit paymenttypes_url
    assert_selector "h1", text: "Paymenttypes"
  end

  test "creating a Paymenttype" do
    visit paymenttypes_url
    click_on "New Paymenttype"

    check "Crypto" if @paymenttype.crypto
    fill_in "Cryptourl", with: @paymenttype.cryptourl
    fill_in "Currentprice", with: @paymenttype.currentprice
    fill_in "Paymentname", with: @paymenttype.paymentname
    click_on "Create Paymenttype"

    assert_text "Paymenttype was successfully created"
    click_on "Back"
  end

  test "updating a Paymenttype" do
    visit paymenttypes_url
    click_on "Edit", match: :first

    check "Crypto" if @paymenttype.crypto
    fill_in "Cryptourl", with: @paymenttype.cryptourl
    fill_in "Currentprice", with: @paymenttype.currentprice
    fill_in "Paymentname", with: @paymenttype.paymentname
    click_on "Update Paymenttype"

    assert_text "Paymenttype was successfully updated"
    click_on "Back"
  end

  test "destroying a Paymenttype" do
    visit paymenttypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paymenttype was successfully destroyed"
  end
end
