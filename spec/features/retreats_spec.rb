
require 'rails_helper'
#RSpec.describe "todos/show.html.haml", type: :view do
#	it "displays the todo title" do
#	  assign :todo, Todo.new(title: "Buy milk")
#  
#	  render
#  
#	  expect(rendered).to have_css("header h1", text: "Buy milk")
#	end
#  end
RSpec.feature "adding page" do
	scenario "allow admin to create a page" do 
		
		visiting admin_pages_path

		expect(page).to have_content("Studio")
	end

end