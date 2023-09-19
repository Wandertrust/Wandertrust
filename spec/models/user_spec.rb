require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'relationships' do
    it { should have_many :user_trips }
    it { should have_many(:trips).through(:user_trips) }
  end

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
    it { should validate_presence_of :password }
  end

  describe 'instance methods' do
    before :each do
      @user = create(:user)
      @trip_1 = @user.trips.create(name: 'Ward Loop', start_time: "10/18/22 9:00AM", end_time: "10/18/22 2:00PM", gpx_file: 'ward_loop.gpx')
      @trip_2 = @user.trips.create(name: 'La Sal Loop', start_time: DateTime.now - 1, end_time: DateTime.now + 1, gpx_file: 'la_sal_loop.gpx')
      @trip_3 = @user.trips.create(name: 'Skyline', start_time: DateTime.now + 1, end_time: DateTime.now + 2, gpx_file: 'skyline.gpx')
    end

    it '#upcoming_trips' do
      expect(@user.upcoming_trips).to eq([@trip_2, @trip_3])
      expect(@user.upcoming_trips).to_not include(@trip_1)
    end
  end
end