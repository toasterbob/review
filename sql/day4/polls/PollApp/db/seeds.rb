# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
  u1 = User.create!(user_name: "Bobby Tables")
  u2 = User.create!(user_name: "Julia Childs")

  p1 = Poll.create!(title: "Pony Boy Eats a Ship", author_id: u1.id)
   
  q1 = Question.create!(text: "Is the bonga bonga the goldfish king?", poll_id: p1.id)
  ac1 = AnswerChoice.create!(text: "Jeep Cherokee", question_id: q1.id)
  ac2 = AnswerChoice.create!(text: "Energy equals mass times the speed of light", question_id: q1.id)
  ac3 = AnswerChoice.create!(text: "RON!", question_id: q1.id)

  q2 = Question.create!(text: "Why did I run into a pole?", poll_id: p1.id)
  ac4 = AnswerChoice.create!(text: "Too many drugs", question_id: q2.id)
  ac5 = AnswerChoice.create!(text: "Challenge", question_id: q2.id)
  ac6 = AnswerChoice.create!(text: "Birdy, birdy in the SKY", question_id: q2.id)

  r1 = Response.create!(
    respondent_id: u2.id, answer_choice_id: ac2.id
  )
  r2 = Response.create!(
    respondent_id: u2.id, answer_choice_id: ac4.id
  )
end
