# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.first

super_mario = user.games.find_or_create_by(name: "Super Mario")

review_1 = user.reviews.find_or_create_by(name: "Best Game Ever",
     review_post: "Boy golly I really love this game theres a guy called bowser and he has goombas", game_id: super_mario.id )