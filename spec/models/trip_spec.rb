require 'rails_helper'

RSpec.describe Trip, type: :model do
  describe 'relationships' do
    it { should have_many :user_trips }
    it { should have_many(:users).through(:user_trips) }
  end
end