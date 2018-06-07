# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all

users = User.create!([
  {username: 'brikend'},
  {username: 'oliver'},
  {username: 'bob'}
  ])

polls = Poll.create!([
  {author_id: User.first.id, title: 'food'},
  {author_id: User.second.id, title: 'cars'}
  ])

questions = Question.create([
  {poll_id: Poll.first.id, text: "what's your favorite food?"},
  {poll_id: Poll.first.id, text: "what's your favorite pizza topping?"},
  {poll_id: Poll.second.id, text: "what's your favorite car manufacturer?"}
  ])

answer_choices = AnswerChoice.create!([
  {question_id: Question.first.id, text: "pasta"},
  {question_id: Question.first.id, text: "pizza"},
  {question_id: Question.second.id, text: "pepperoni"},
  {question_id: Question.second.id, text: "mushroom"},
  {question_id: Question.third.id, text: "mazda"},
  {question_id: Question.third.id, text: "ferrari"}
  ])

responses = Response.create!([
  {user_id: User.first.id, answer_choice_id: AnswerChoice.first.id},
  {user_id: User.second.id, answer_choice_id: AnswerChoice.first.id},
  {user_id: User.first.id, answer_choice_id: AnswerChoice.fourth.id},
  {user_id: User.second.id, answer_choice_id: AnswerChoice.fourth.id},
  {user_id: User.third.id, answer_choice_id: AnswerChoice.third.id}
  ])
