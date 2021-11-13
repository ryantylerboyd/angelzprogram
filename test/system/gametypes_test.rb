require "application_system_test_case"

class GametypesTest < ApplicationSystemTestCase
  setup do
    @gametype = gametypes(:one)
  end

  test "visiting the index" do
    visit gametypes_url
    assert_selector "h1", text: "Gametypes"
  end

  test "creating a Gametype" do
    visit gametypes_url
    click_on "New Gametype"

    fill_in "Commission", with: @gametype.commission
    fill_in "Gametype", with: @gametype.gametype
    fill_in "Multiplier", with: @gametype.multiplier
    click_on "Create Gametype"

    assert_text "Gametype was successfully created"
    click_on "Back"
  end

  test "updating a Gametype" do
    visit gametypes_url
    click_on "Edit", match: :first

    fill_in "Commission", with: @gametype.commission
    fill_in "Gametype", with: @gametype.gametype
    fill_in "Multiplier", with: @gametype.multiplier
    click_on "Update Gametype"

    assert_text "Gametype was successfully updated"
    click_on "Back"
  end

  test "destroying a Gametype" do
    visit gametypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gametype was successfully destroyed"
  end
end
