Player.destroy_all
Weapon.destroy_all
Game.destroy_all
Statistic.destroy_all

Player.create(user_player: false, name: "Fighter_1")
Player.create(user_player: false, name: "Fighter_2")

Weapon.create(name: "Sword", power: 8, speed: 11)
Weapon.create(name: "Axe", power: 15, speed: 4)
Weapon.create(name: "Knife", power: 4, speed: 16)
