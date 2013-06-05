require "spec_helper"

feature "creating tickets" do
  
  scenario "creating a ticket" do

    Factory :user, email: "helpdesk@example.com"
    User.find_by_email("helpdesk@example.com").confirm!
    visit "/"
    click_link "Sign in"
    fill_in "Email", with: "helpdesk@example.com"
    fill_in "Password", with: "password"
    click_button "Sign in"

    visit "/"
    click_link "Create New Ticket"
    fill_in "Title", with: "example ticket"
    fill_in "Description", with: "an example of a ticket"
    click_button "Create Ticket"
    click_link "example ticket"

    within ".ticket" do
      page.should have_content("example ticket")
      page.should have_content("an example of a ticket")    
    end

  end

  scenario "trying to create a ticket without signing in" do

    visit "/"
    page.should_not have_content("Create Ticket")
    visit "/tickets/new"
    page.should have_content("You need to be signed in to create a ticket.")

  end

end
