require "rails_helper"

RSpec.describe "Retreats page features" do
	it "displays the Retreats title" do
	  visit('http://localhost:3000/retreats')
	  expect(page).to have_content("Retreats")
    end
end