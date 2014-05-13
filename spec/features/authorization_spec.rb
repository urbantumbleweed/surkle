# Given that I have a registered account
# when I visit the login page
# and fill in my email and password
# and I click on the login button
# then I should be signed in and taken to my profile page


require 'spec_helper'

feature "A user can sign in" do

  background { User.create( first_name: "Dave", last_name: "Jones", email: "dave@ga.co",
                            password: "qwerty", password_confirmation: "qwerty")}

  scenario "sign in user given valid username and password" do
    visit(new_user_session_path)
    fill_in("Login", with: "dave@ga.co")
    fill_in("Password", with: "qwerty")
    click_button("login")
    expect(page).to have_content("Successfully logged in!")
  end

  # background { User.create( username: "abray", email: "adam@ga.co",
  #                       password: "qwerty", password_confirmation: "qwerty") }

  # scenario "should sign in the user given a valid username and password" do
  #   sign_in("adam@ga.co", "qwerty")
  #   expect(page).to have_content("Successfully logged in!")
  # end

  # scenario "should not sign in a user with an invalid email or password" do
  #   sign_in("adam@ga.co", "wrong_password")
  #   expect(page).to have_content("Invalid username or password.")
  # end
end

# comments_spec
# it "should allow sign in users to comment on a post's page"
