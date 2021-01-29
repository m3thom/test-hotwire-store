class Room < ApplicationRecord
  has_many :user_rooms
  has_many :users, through: :user_rooms
  has_many :messages, through: :user_rooms

  broadcasts

  validates :name, presence: true
end
