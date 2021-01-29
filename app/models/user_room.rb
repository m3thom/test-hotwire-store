class UserRoom < ApplicationRecord
  belongs_to :user
  belongs_to :room

  has_many :messages

  # One user per that room
  validates :user_id, presence: true, uniqueness: {scope: :room_id}
  validates :room_id, presence: true
end
