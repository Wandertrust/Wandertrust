require 'rails_helper'

RSpec.describe "User Login feature" do
  before :each do
    @user_1 = User.create!(name: 'Joe', email: "jsphverro5@gmail.com", password: "melons1234", emergency_contact_name: "Tori", emergency_contact_phone: "319-654-6008", emergency_contact_relationship: "Partner")

    visit "/login"
  end

  describe "happy path" do
    it "logs in a user with the correct credentials" do
      fill_in :email, with: @user_1.email
      fill_in :password, with: @user_1.password
      click_on "Let's Wander"

      expect(page.current_path).to eq("/users/#{@user_1.id}")
      expect(page).to have_content("Welcome, Joe!")
    end

    it "has a button to login with google oauth" do
      expect(page).to have_button("Log In with Google")
    end
  end

  describe "sad path" do
    it "does not log in a user with incorrect credentials" do
      fill_in :email, with: @user_1.email
      fill_in :password, with: "notthepassword"
      click_on "Let's Wander"

      expect(page).to have_content("Incorrect email or password")
      expect(page.current_path).to eq("/login")
    end

    it "does not login a user that does not exist" do
      fill_in :email, with: "beepboopbop@gmail.com"
      fill_in :password, with: "notthepassword"
      click_on "Let's Wander"

      expect(page).to have_content("Incorrect email or password")
      expect(page.current_path).to eq("/login")
    end
  end
end