require 'spec_helper'

Capybara.app = app

feature "User adds a band" do
  scenario "by providing a band name" do
    band_name =  "Rao and the Oarsmen"

    visit new_bands_path

    fill_in "name", :with => band_name
    click_button "Add Band"

    expect(page).to have_text("You have added #{band_name}")
  end
end
