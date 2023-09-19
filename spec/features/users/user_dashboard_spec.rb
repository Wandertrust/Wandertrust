require 'rails_helper'

describe 'as a logged in user' do
  before :each do
    @user = create(:user)
    @trip_1 = @user.trips.create(name: 'Ward Loop', start_time: "10/18/22 9:00AM", end_time: "10/18/22 2:00PM", gpx_file: 'ward_loop.gpx')
    @trip_2 = @user.trips.create(name: 'La Sal Loop', start_time: DateTime.now - 1, end_time: DateTime.now + 1, gpx_file: 'la_sal_loop.gpx')
    @trip_3 = @user.trips.create(name: 'Skyline', start_time: DateTime.now + 1, end_time: DateTime.now + 2, gpx_file: 'skyline.gpx')

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
      expect(page).to have_no_content('Ward Loop')
    end
  end

  it 'each listed activity has a link to view the activity and brief information' do
    within "#upcoming-trips" do
      within "#trip-#{@trip_2.id}" do
        expect(page).to have_link('Trip Page')
        expect(page).to have_content(@trip_2.start_time.strftime("%A, %B %d, %Y at %I:%M %p"))
      end
    end
  end

  xit "I see a button to track a new activity" do
    expect(page).to have_button('Plan a new trip')
  end

  xit "I see a button to view old trips" do
    expect(page).to have_button('Review old trips')
  end

  xit "I see some sort of trend representation to see how many miles I have done or ft elevation gain etc..." do
    
  end
end