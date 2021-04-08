# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p 'Generating users'

4.times do
  users = User.new(
    email: Faker::Internet.email,
    password: "coucou"
  )
  users.save
end

p 'Generating quizzes'

4.times do
  quizzes = Quiz.new(
    title: Faker::Educator.course_name
  )
  quizzes.save
end

p 'Generating questions'

quizzes = Quiz.all

quizzes.each_with_index do |quiz, index|

end

p 'Generating answers'

# questions = Question.all

# questions.each do |question|
#   1.times do
#     correct_option = Option.new(
#       answer: Faker::Lorem.sentence,
#       question_id: question.id,
#       is_correct: true
#     )
#     correct_option.save
#   end
#   5.times do
#     options = Option.new(
#       answer: Faker::Lorem.sentence,
#       question_id: question.id,
#       is_correct: false
#     )
#     options.save
#   end
# end

question1 = Question.new(
  question: "Quelle est la racine carrée de 36 ?",
  quiz_id: 1
)
question1.save
question2 = Question.new(
  question: "Quel département français a pour chef-lieu Bordeaux ?",
  quiz_id: 1
)
question2.save
question3 = Question.new(
  question: "Qu'est pour moi le père de mon père ?",
  quiz_id: 1
)
question3.save
question4 = Question.new(
  question: "Combien de voleurs accompagnaient Ali Baba ?",
  quiz_id: 1
)
question4.save

option1 = Option.new(
  answer: "6",
  question_id: 1,
  is_correct: true
)
option1.save
option2 = Option.new(
  answer: "9",
  question_id: 1,
  is_correct: false
)
option2.save
option3 = Option.new(
  answer: "12",
  question_id: 1,
  is_correct: false
)
option3.save

option4 = Option.new(
  answer: "18",
  question_id: 1,
  is_correct: false
)
option4.save

option5 = Option.new(
  answer: "Landes",
  question_id: 2,
  is_correct: false
)
option5.save
option6 = Option.new(
  answer: "Mayenne",
  question_id: 2,
  is_correct: false
)
option6.save
option7 = Option.new(
  answer: "Gironde",
  question_id: 2,
  is_correct: true
)
option7.save
option8 = Option.new(
  answer: "Ardèche",
  question_id: 2,
  is_correct: false
)
option8.save

option9 = Option.new(
  answer: "Mon oncle",
  question_id: 3,
  is_correct: true
)
option9.save
option10 = Option.new(
  answer: "Mon frère",
  question_id: 3,
  is_correct: false
)
option10.save
option11 = Option.new(
  answer: "Mon neveu",
  question_id: 3,
  is_correct: false
)
option11.save
option12 = Option.new(
  answer: "Mon grand-père",
  question_id: 3,
  is_correct: false
)
option12.save

option13 = Option.new(
  answer: "12",
  question_id: 2,
  is_correct: false
)
option13.save
option14 = Option.new(
  answer: "40",
  question_id: 2,
  is_correct: true
)
option14.save
option15 = Option.new(
  answer: "1000",
  question_id: 1,
  is_correct: false
)
option15.save
option16 = Option.new(
  answer: "10000",
  question_id: 1,
  is_correct: false
)
option16.save

question5 = Question.new(
  question: "Lequel de ces nombres est un nombre premier ?",
  quiz_id: 2
)
question5.save
question6 = Question.new(
  question: "Combien d'années compte-t-on dans une décennie ?",
  quiz_id: 2
)
question6.save
question7 = Question.new(
  question: "Lequel de ces termes est synonyme de joyeux ?",
  quiz_id: 2
)
question7.save


option20 = Option.new(
  answer: "13",
  question_id: 4,
  is_correct: true
)
option20.save
option21 = Option.new(
  answer: "25",
  question_id: 4,
  is_correct: false
)
option21.save
option22 = Option.new(
  answer: "32",
  question_id: 4,
  is_correct: false
)
option22.save

option23 = Option.new(
  answer: "33",
  question_id: 4,
  is_correct: false
)
option23.save

option24 = Option.new(
  answer: "Gai",
  question_id: 6,
  is_correct: true
)
option24.save
option25 = Option.new(
  answer: "Bouleversé",
  question_id: 6,
  is_correct: false
)
option25.save
option26 = Option.new(
  answer: "Désolé",
  question_id: 6,
  is_correct: false
)
option26.save
option27 = Option.new(
  answer: "Navré",
  question_id: 6,
  is_correct: false
)
option27.save

option28 = Option.new(
  answer: "1",
  question_id: 5,
  is_correct: false
)
option28.save
option29 = Option.new(
  answer: "10",
  question_id: 5,
  is_correct: true
)
option29.save
option30 = Option.new(
  answer: "12",
  question_id: 5,
  is_correct: false
)
option30.save
option31 = Option.new(
  answer: "100",
  question_id: 5,
  is_correct: false
)
option31.save

question8 = Question.new(
  question: "Quel âge a un enfant de 18 mois ?",
  quiz_id: 3
)
question8.save
question9 = Question.new(
  question: "Combien compte-t-on de jours durant le mois de juillet ?",
  quiz_id: 3
)
question9.save


option40 = Option.new(
  answer: "1 an",
  question_id: 7,
  is_correct: false
)
option40.save
option41 = Option.new(
  answer: "1 an et demi",
  question_id: 7,
  is_correct: true
)
option41.save
option42 = Option.new(
  answer: "2 ans",
  question_id: 7,
  is_correct: false
)
option42.save

option43 = Option.new(
  answer: "3 ans",
  question_id: 7,
  is_correct: false
)
option43.save

option44 = Option.new(
  answer: "28",
  question_id: 8,
  is_correct: false
)
option44.save
option45 = Option.new(
  answer: "29",
  question_id: 8,
  is_correct: false
)
option45.save
option46 = Option.new(
  answer: "30",
  question_id: 8,
  is_correct: false
)
option46.save
option47 = Option.new(
  answer: "31",
  question_id: 8,
  is_correct: true
)
option47.save