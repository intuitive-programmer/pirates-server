# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Score.delete_all
UserScore.delete_all

ricky = User.create(username: 'ricky')
steve = User.create(username: 'steve')
sam = User.create(username: 'sam')
dario = User.create(username: 'dario')


score2 = Score.create(points: 20)
score3 = Score.create(points: 30)
score4 = Score.create(points: 40)
score5 = Score.create(points: 20)
score6 = Score.create(points: 100)


UserScore.create(user:ricky, score: score2)
UserScore.create(user:ricky, score: score3)
UserScore.create(user:sam, score: score4)
UserScore.create(user:steve, score: score5)
UserScore.create(user:dario, score: score6)


