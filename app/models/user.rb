class User < ApplicationRecord
  has_many :user_trips
  has_many :trips, through: :user_trips

  enum [:mother, :father, :partner, :sibling, :other]

  has_secure_password

  validates_presence_of :name, :email, :password, :on => :create
  validates_uniqueness_of :email

  def self.from_omniauth(response)
    user = User.find_by(email: response[:info][:email])
    if user
      user.update(uid: response[:uid], provider: response[:provider])
      user
    else
      User.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |u|
        u.name = response[:info][:name]
        u.email = response[:info][:email]
        u.password = SecureRandom.hex(15)
      end
    end
  end
end
