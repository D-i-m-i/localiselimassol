class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
      has_many :laptop_cafes
      has_many :annual_events
      has_many :local_experiences
      has_many :foodie_places
      validates :first_name, presence: true
      validates :last_name, presence: true
      validates :bio, presence: true, length: { maximum: 500 }
end
