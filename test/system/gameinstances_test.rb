require "application_system_test_case"

class GameinstancesTest < ApplicationSystemTestCase
  setup do
    @gameinstance = gameinstances(:one)
  end

  test "visiting the index" do
    visit gameinstances_url
    assert_selector "h1", text: "Gameinstances"
  end

  test "creating a Gameinstance" do
    visit gameinstances_url
    click_on "New Gameinstance"

    fill_in "Betamount", with: @gameinstance.betamount
    fill_in "Commission", with: @gameinstance.commission
    check "Crypto" if @gameinstance.crypto
    fill_in "Cryptoprice", with: @gameinstance.cryptoprice
    fill_in "Currentprice", with: @gameinstance.currentprice
    fill_in "Gametype", with: @gameinstance.gametype
    fill_in "Multiplier", with: @gameinstance.multiplier
    check "Outcome" if @gameinstance.outcome
    fill_in "Paymentname", with: @gameinstance.paymentname
    fill_in "Playername", with: @gameinstance.playername
    fill_in "Result", with: @gameinstance.result
    fill_in "Sessionid", with: @gameinstance.sessionid
    click_on "Create Gameinstance"

    assert_text "Gameinstance was successfully created"
    click_on "Back"
  end

  test "updating a Gameinstance" do
    visit gameinstances_url
    click_on "Edit", match: :first

    fill_in "Betamount", with: @gameinstance.betamount
    fill_in "Commission", with: @gameinstance.commission
    check "Crypto" if @gameinstance.crypto
    fill_in "Cryptoprice", with: @gameinstance.cryptoprice
    fill_in "Currentprice", with: @gameinstance.currentprice
    fill_in "Gametype", with: @gameinstance.gametype
    fill_in "Multiplier", with: @gameinstance.multiplier
    check "Outcome" if @gameinstance.outcome
    fill_in "Paymentname", with: @gameinstance.paymentname
    fill_in "Playername", with: @gameinstance.playername
    fill_in "Result", with: @gameinstance.result
    fill_in "Sessionid", with: @gameinstance.sessionid
    click_on "Update Gameinstance"

    assert_text "Gameinstance was successfully updated"
    click_on "Back"
  end

  test "destroying a Gameinstance" do
    visit gameinstances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gameinstance was successfully destroyed"
  end
end
