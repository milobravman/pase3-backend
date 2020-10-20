# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Monster.destroy_all
Part.destroy_all


monsters = [{name: "Bob the destroyer"}, {name: "tina"}, {name: "deathBreater"}]

monsterObj_ary = []

monsters.each do |monster|
    temp_monster = Monster.create(monster)
    monsterObj_ary << temp_monster
    puts (monsterObj_ary)
end

parts = [
    {
        name: "strong chest",
        part_type: "chest",
        attack_power: 0,
        health: 500,
        image: "https://images-na.ssl-images-amazon.com/images/I/61i78w4KmnL._AC_SL1200_.jpg",
        monster_id: monsterObj_ary[0].id
        
    },
    {
        name: "wolf-head",
        part_type: "head",
        attack_power: 60,
        health: 130,
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRGMi1omMMm97vowOO5eA4yUCG9djoowG68Fw&usqp=CAU",
        monster_id: monsterObj_ary[0].id
    },
    {
        name: "walking-sticks",
        part_type: "legs",
        attack_power: 20,
        health: 75,
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTm3cI1BZW2L3w_DWUPrcbqSCUd18ZD2FC6NQ&usqp=CAU",
        monster_id: monsterObj_ary[0].id
    },
    {
        name: "knife-arm",
        part_type: "Larm",
        attack_power: 70,
        health: 30,
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTB1vY1Oc2G_QTh5qjGC8lsqC4nNtCe4s4e9Q&usqp=CAU",
        monster_id: monsterObj_ary[0].id
    },
    {
        name: "sheid-arm",
        part_type: "Rarm",
        attack_power: 20,
        health: 175,
        image: "https://png.pngtree.com/element_origin_min_pic/17/09/02/edd30932d1c6075b4c0e302476b03e13.jpg",
        monster_id: monsterObj_ary[0].id
    },
    {
        name: "goblin-head",
        part_type: "head",
        attack_power: 20,
        health: 175,
        image: "https://www.pinclipart.com/picdir/big/42-424231_monster-head-png-clipart.png",
        monster_id: monsterObj_ary[1].id
    },
    {
        name: "goblin-head",
        part_type: "head",
        attack_power: 20,
        health: 175,
        image: "https://pixy.org/src/420/thumbs350/4209771.jpg",
        monster_id: monsterObj_ary[2].id
    }
    
]



parts.each do |part|
    Part.create(part)
end

# Part.create({
#     name: "strong chest",
#     part_type: "chest",
#     attack_power: 0,
#     health: 500,
#     image: "https://encrypted-tbn0.gstatic.com/images?",
#     monster_id: 22
# })