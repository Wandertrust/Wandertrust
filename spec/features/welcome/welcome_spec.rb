require 'rails_helper'

RSpec.describe 'welcome page contents' do
  before :each do
    User.create(email: 'torienyart@gmail.com', password: '1234', name: 'Tori')
    visit '/'
  end

  describe 'nav bar' do
    it 'has links to login, register, and return home' do
      expect(page).to have_link('login')
      expect(page).to have_link('register')
      expect(page).to have_link('Wandertrust')
    end

    it 'if I am already logged in I see a link to log out or visit my dashboard NOT login/register' do
      visit login_path
      within "#login_buttons" do
        fill_in 'email', with: 'torienyart@gmail.com'
        fill_in 'password', with: '1234'
        click_on "Let's Wander"
      end

      expect(page).to have_button('logout')
      expect(page).to have_button('my dashboard')
      expect(page).to_not have_button('login')
      expect(page).to_not have_button('register')
    end

    it 'if I am already logged in I also see a link to start a new adventure' do
      visit login_path
      within "#login_buttons" do
        fill_in 'email', with: 'torienyart@gmail.com'
        fill_in 'password', with: '1234'
        click_on "Let's Wander"
      end

      expect(page).to have_button('new adventure')
    end
  end

  describe 'page body' do
    it 'has a prompt to login to get started' do
      expect(page).to have_content('Start tracking your adventures so you can trust where you wander...')
      expect(page).to have_button("let's wander")
    end
  end
end