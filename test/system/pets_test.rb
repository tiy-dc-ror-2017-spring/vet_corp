require "application_system_test_case"

class PetsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit pets_url

    click_link "New Pet"
    fill_in "Name", with: "Moose"

    click_button "Create Pet"

    assert_selector "p", text: /Moose/
  end
end
