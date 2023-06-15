class User < ApplicationRecord
  has_many :user_trips
  has_many :trips, through: :user_trips

  has_secure_password

  validates_presence_of :name, :email, :password, :emergency_contact_name, :emergency_contact_phone, :emergency_contact_relationship, :on => :create
  validates_uniqueness_of :email
end
