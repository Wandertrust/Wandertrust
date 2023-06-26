require 'rails_helper'

RSpec.describe 'New User Page' do
  describe 'happy_path' do
    before :each do
      @user_1 = User.create!(name: 'Joe', email: "jsphverro5@gmail.com", password: "melons1234", emergency_contact_name: "Tori", emergency_contact_phone: "319-654-6008", emergency_contact_relationship: "Partner")

      visit "/register"
    end

    it "the user should see a form to register" do
      expect(page).to have_field(:user_name)
      expect(page).to have_field(:user_email)
      expect(page).to have_field(:user_password)
      expect(page).to have_field(:user_password_confirmation)
      expect(page).to have_field(:user_emergency_contact_name)
      expect(page).to have_field(:user_emergency_contact_phone)
      expect(page).to have_select(:user_emergency_contact_relationship)
      expect(page).to have_button("Get Wandering")
    end

    xit "the user should also see a link to register using google" do

    end

    it "the user should be taken to their dashboard when they fill out the form and click submit" do
      fill_in :user_name, with: "Tori"
      fill_in :user_email, with: "torienyart@gmail.com"
      fill_in :user_password, with: "password1234"
      fill_in :user_password_confirmation, with: "password1234"
      fill_in :user_emergency_contact_name, with: "Joe"
      fill_in :user_emergency_contact_phone, with: "518-932-2664"
      select "Partner", from: :user_emergency_contact_relationship
      click_on "Get Wandering"

      user = User.last

      expect(current_path).to eq("/users/#{user.id}")
      expect(page).to have_content("Welcome, Tori!")
    end
  end
end