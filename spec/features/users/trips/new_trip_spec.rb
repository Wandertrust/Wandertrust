require 'rails_helper'

describe "as a logged in user" do
  before :each do
    @user = User.create(email: 'torienyart@gmail.com', password: '1234', name: 'Tori')
    visit login_path
    within "#login_buttons" do
      fill_in 'email', with: 'torienyart@gmail.com'
      fill_in 'password', with: '1234'
      click_on "Let's Wander"
    end
  end

  it "i can access a page to create a new trip that includes fields for name, start and end time, gpx_file, and inviting other users" do
    visit new_user_trip_path(@user.id)

    expect(page).to have_field('Name')
    expect(page).to have_field('Start Time')
    expect(page).to have_field('Projected End Time')
    expect(page).to have_field('gpx file')
    expect(page).to have_select('Invite other users')
  end

  it "the gpx can also be pulled from strava or ride with gps" do
    within "#3rd-party-gpx" do
      expect(page).to have_button('Strava')
      expect(page).to have_button('Ride with GPS')
    end
  end

  xit "when i upload a gpx file to the page it will autopopulate a map for me" do

  end
end