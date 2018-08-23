require "rails_helper"

RSpec.feature 'Home page', :type => :feature do
  scenario "User enter holiday date to form and submit" do
    visit "/"

    fill_in "picked_date[date]", :with => "31-12-2018"
    click_button "Submit"

    expect(page).to have_text("Success")
  end

  scenario "User enter not holiday date to form and submit" do
    visit "/"

    fill_in "picked_date[date]", :with => "02-02-2018"
    click_button "Submit"

    expect(page).to have_text("Failure")
  end
end
