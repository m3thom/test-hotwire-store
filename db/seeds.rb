# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create({email: 'test1@mail.com', password: 123456})
user_2 = User.create({email: 'test2@mail.com', password: 123456})
user_3 = User.create({email: 'test3@mail.com', password: 123456})

all_room = Room.create(name: 'All Feed')
peer_room = Room.create(name: 'peer Feed')

user_1.user_rooms.create(room_id: peer_room.id)
user_2.user_rooms.create(room_id: peer_room.id)

User.all.map do |user, index|
  user_room = user.user_rooms.create(room_id: all_room.id)
  Message.create(content: "Hi from user #{index}", user_room_id: user_room.id)
end
