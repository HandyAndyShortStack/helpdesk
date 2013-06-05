require 'spec_helper'

feature "signing in" do
  
  before do
    Factory :user, email: "helpdesk@example.com"
  end

  scenario "signing in via confirmation" do

    open_email "helpdesk@example.com", with_subject: /Confirmation/
    click_first_link_in_email
    
    page.should have_content("Your account was successfully confirmed")
    page.should have_content("Signed in as helpdesk@example.com")
  
  end

end
