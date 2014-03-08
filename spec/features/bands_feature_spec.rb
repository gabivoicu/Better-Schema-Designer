require 'spec_helper'

Capybara.app = app

feature "Band Fandom" do
  scenario "User creates a new band" do
    visit new_bands_path

    band_name =  "Rao and the Oarsmen"
    fill_in "name", :with => band_name
    click_button "Add Band"

    expect(page).to have_text("You have added #{band_name}")
  end
end
