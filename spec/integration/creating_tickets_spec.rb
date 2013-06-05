require "spec_helper"

feature "creating tickets" do
  
  scenario "creating a ticket" do

    visit "/"
    click_link "Create New Ticket"
    fill_in "Title", with: "example ticket"
    fill_in "Description", with: "an example of a ticket"
    click_button "Create Ticket"

    within ".ticket" do
      page.should have_content("example ticket")
      page.should have_content("an example of a ticket")    
    end

  end

end
