require 'rails_helper'

describe 'as a logged in user' do
  before :each do
    @user = create(:user)
    @user.trips.create(name: 'Ward Loop', start_time: "10/18/22 9:00AM", end_time: "10/18/22 2:00PM", gpx_file: 'ward_loop.gpx')
    @user.trips.create(name: 'La Sal Loop', start_time: "10/18/23 9:00AM", end_time: "10/18/23 2:00PM", gpx_file: 'la_sal_loop.gpx')
    @user.trips.create(name: 'Skyline', start_time: DateTime.now, end_time: DateTime.now + 1, gpx_file: 'skyline.gpx')

    visit login_path
    fill_in 'email', with: @user.email
    fill_in 'password', with: @user.password
    click_on "Let's Wander"
  end

  it 'I see a list of recently created activities' do
    #could eventually create a filter that pulls the activities either by date created or date updated or start date of the activity
    expect(page).to have_content("Here's what you've got coming up...")
    within "#upcoming-trips" do
      expect(page).to have_content('La Sal Loop')
      expect(page).to have_content('Skyline')
      # expect(page).to have_no_content('Ward Loop')
    end
  end

  xit "I see a button to track a new activity" do
    expect(page).to have_button('Plan a new trip')
  end

  xit "I see a button to view old trips" do

  end

  xit "I see some sort of trend representation to see how many miles I have done or ft elevation gain etc..." do
    
  end
end