require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'relationships' do
    it { should have_many :user_trips }
    it { should have_many(:trips).through(:user_trips) }
  end

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should validate_presence_of :password }
    it { should validate_presence_of :emergency_contact_name }
    it { should validate_presence_of :emergency_contact_phone }
    it { should validate_presence_of :emergency_contact_relationship }
  end

end