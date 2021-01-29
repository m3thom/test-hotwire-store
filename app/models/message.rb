class Message < ApplicationRecord
  belongs_to :user_room
  has_one :user, through: :user_room
  has_one :room, through: :user_room

  broadcasts_to :room, target: "messages"
end
