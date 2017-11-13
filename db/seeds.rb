# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.destroy_all
Weapon.destroy_all
Game.destroy_all
Statistic.destroy_all

Player.create(user_player: false, name: "Fighter_1")
Player.create(user_player: false, name: "Fighter_2")

Weapon.create(name: "Axe", power: 70, speed: 20)
Weapon.create(name: "Knife", power: 25, speed: 65)
