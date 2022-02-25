require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all


olivier = User.create(name: "Olivier", password: "123456", address: "Hellersdorf, berlin, germany", email: "oliv@gmail.com")
john = User.create(name: "John", password: "654321", address: "Spandau, berlin, germany", email: "john@gmail.com")
alex = User.create(name: "Alex", password: "123465", address: "Lichtenberg, Berlin, Germany", email: "alex@gmail.com")
murjana = User.create(name: 'Murjana',  password: "123456", address: "Kaulsdorf-nord, Berlin, Germany", email: 'murjana@gmail.com')
salma = User.create(name: 'Salma',  password: "123456", address: "Ara village  Palestine", email: 'salma@gmail.com')

Fairy.destroy_all

file_test_0 = URI.open("https://i.pinimg.com/564x/5d/a3/60/5da360203dc0a46b8e97f77cab5b34cf.jpg")
tinker = Fairy.create!(name: "Tinker Bell", super_power: "sassy sidekick", description: "A Fairy's work is much more than at first it might appear. Suppose your broken clock ticks, though it hasn't in a year. Perchance you find a toy you lost, or jingling bells you hear. It all means that one very special fairy might be near", price: 250, user: olivier)
tinker.photo.attach(io: file_test_0, filename: "desk", content_type: 'image/png')

file_test_1 = URI.open("https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e64ffe77-347f-4301-8cd5-04350bf858f7/d84xv5b-3b53a2d2-b7d3-4ba6-89eb-f1f20529f900.jpg/v1/fill/w_1024,h_683,q_75,strp/fairy_godmother_shrek_magic_by_matsu_sotome_d84xv5b-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NjgzIiwicGF0aCI6IlwvZlwvZTY0ZmZlNzctMzQ3Zi00MzAxLThjZDUtMDQzNTBiZjg1OGY3XC9kODR4djViLTNiNTNhMmQyLWI3ZDMtNGJhNi04OWViLWYxZjIwNTI5ZjkwMC5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.DT8lbFMwC_y47ql32YlUaT0-x4NiW7GmXjt5bt1GbVI")
thumbelina = Fairy.create!(name: "Thumbelina", super_power: "resilience", description: "a tiny young girl who is not as big as her adoptive mother's thumb, and falls in love with the handsome fairy prince Cornelius.", price: 150, user: alex)
thumbelina.photo.attach(io: file_test_1, filename: "desk", content_type: 'image/png')

file_test_2 = URI.open("https://i.pinimg.com/564x/fd/51/2f/fd512f423092ba88a5c9f0e7a069b5d9.jpg")
priwinkle = Fairy.create!( name: 'Periwinkle', super_power:' defrost Berlin cold nights and turn the snow into Marghartitta' , description: ' She leaves the wood snowy woods at nights , calls you call for a warm night she is your bar tender she leaves you tinder', price: 200, user: murjana )
priwinkle.photo.attach(io: file_test_2, filename: "desk", content_type: 'image/png')

file_test_3 = URI.open("https://howtodateamagicalcreature.com/wp-content/uploads/2018/04/Tooth-Fairy-Scandal-600x400.jpg")
sil = Fairy.create!(name: "Silvermist", super_power: "calm, practical and thoughful", description: "a Water fairy with an East Asian appearance with pale skin, brown eyes, and black hair.", price: 210, user: john)
sil.photo.attach(io: file_test_3, filename: "desk", content_type: 'image/png')

file_test_4 = URI.open("https://i.pinimg.com/564x/99/7e/aa/997eaa3c97429fc631e4a25f9471d5ee.jpg")
fawn = Fairy.create!( name: "Fawn", super_power:"Keep coding, when you're down", description: "Fawn is the one that speaks all languages ever known to man or machine, she speaks Ruby, Java Script,Python, Sql, and the list continues.  She is fluent in almost all animal languages and is considered one of the best of her talent.", price: 500, user: olivier)
fawn.photo.attach(io: file_test_4, filename: "desk", content_type: 'image/png')

file_test_5 = URI.open("https://i.pinimg.com/564x/46/8f/4b/468f4b88f0097dd56ee5e1f9af66427e.jpg")
clank = Fairy.create!(name: "Clank", super_power: "sparrowman", description: "a wonderful personality and is always willing to help others, although sometimes he just makes matters worse.", price: 220, user: salma)
clank.photo.attach(io: file_test_5, filename: "desk", content_type: 'image/png')

file_test_6 = URI.open("https://i.pinimg.com/564x/52/ef/e6/52efe662fe1b3c71bd2143c8a413b423.jpg")
vidia = Fairy.create!(name: "Vidia", super_power: "Speedy logestics", description: "A fast-flying fairy, a true rare talent. And this is but a small part of what she does. She make breezes in the summer, blow down leaves in the fall. Her winds even brought you here, dear. Vidia tends to be secretive, keeping extra pixie dust locked in a box hidden under her bed and racing dragonflies when the other fairies aren't looking.", price: 300, user: salma)
vidia.photo.attach(io: file_test_6, filename: "desk", content_type: 'image/png')

file_test_7 = URI.open("https://i.pinimg.com/564x/4c/54/81/4c5481d6e32484e02bf924806f28b3c8.jpg")
fairy = Fairy.create!( name: "Fairy Godmother", super_power: "Hope and optimism", description: "motherly, kind, and genuine character with an optimistically pure heart. She serves as a physical symbol of hope in your darkest hours of despair, when your rake is all red or when your button turns primary blue instead of green', she comes with home cooked meals to remind of you home as well, eat her soup and wake your soul",  price: 500, user: alex)
fairy.photo.attach(io: file_test_7, filename: "desk", content_type: 'image/png')

file_test_8 = URI.open("https://i.pinimg.com/564x/90/65/30/906530b4476defcb09e5536f93c4af91.jpg")
rosetta = Fairy.create!(name: "Rosetta", super_power: "animal and garden talent", description: "a charming and well-mannered garden fairy residing in Pixie Hollow. She shares a sassy streak with Tinker Bell, and in the films speaks with a Southern accent.", price: 220, user: olivier)
rosetta.photo.attach(io: file_test_8, filename: "desk", content_type: 'image/png')

file_test_9 = URI.open("https://i.pinimg.com/564x/a6/12/3e/a6123e2c173a0634024c9c515540b5fd.jpg")
bobble = Fairy.create!(name: "Bobble", super_power: "smart", description: "a charming princess that loves to talk shop and is usually working on some half-finished invention that was probably a silly idea in the first place. He thinks he's more refined and smarter than the average tinker.", price: 450, user: murjana)
bobble.photo.attach(io: file_test_9, filename: "desk", content_type: 'image/png')
