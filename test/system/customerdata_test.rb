require "application_system_test_case"

class CustomerdataTest < ApplicationSystemTestCase
  setup do
    @customerdatum = customerdata(:one)
  end

  test "visiting the index" do
    visit customerdata_url
    assert_selector "h1", text: "Customerdata"
  end

  test "creating a Customerdatum" do
    visit customerdata_url
    click_on "New Customerdatum"

    fill_in "Betamount", with: @customerdatum.betamount
    fill_in "Commission", with: @customerdatum.commission
    fill_in "Currencyconvert", with: @customerdatum.currencyconvert
    fill_in "Gametype", with: @customerdatum.gametype
    fill_in "Multiplier", with: @customerdatum.multiplier
    fill_in "Netincome", with: @customerdatum.netincome
    check "Outcome" if @customerdatum.outcome
    fill_in "Paymenttype", with: @customerdatum.paymenttype
    fill_in "Playername", with: @customerdatum.playername
    click_on "Create Customerdatum"

    assert_text "Customerdatum was successfully created"
    click_on "Back"
  end

  test "updating a Customerdatum" do
    visit customerdata_url
    click_on "Edit", match: :first

    fill_in "Betamount", with: @customerdatum.betamount
    fill_in "Commission", with: @customerdatum.commission
    fill_in "Currencyconvert", with: @customerdatum.currencyconvert
    fill_in "Gametype", with: @customerdatum.gametype
    fill_in "Multiplier", with: @customerdatum.multiplier
    fill_in "Netincome", with: @customerdatum.netincome
    check "Outcome" if @customerdatum.outcome
    fill_in "Paymenttype", with: @customerdatum.paymenttype
    fill_in "Playername", with: @customerdatum.playername
    click_on "Update Customerdatum"

    assert_text "Customerdatum was successfully updated"
    click_on "Back"
  end

  test "destroying a Customerdatum" do
    visit customerdata_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customerdatum was successfully destroyed"
  end
end
