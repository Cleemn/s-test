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
  users.save!
end

p 'Generating quizzes'

4.times do
  quizzes = Quiz.new(
    title: Faker::Educator.course_name
  )
  quizzes.save!
end

p 'Generating questions'

quizzes = Quiz.all

quizzes.each_with_index do |quiz, index|
  4.times do
    questions = Question.new(
      question: Faker::Lorem.question,
      quiz_id: quiz.id
    )
    questions.save!
  end
end

p 'Generating answers'

questions = Question.all

questions.each do |question|
  3.times do
    options = Option.new(
      answer: Faker::Lorem.sentence,
      question_id: question.id,
      is_correct: false
    )
    options.save!
  end
  1.times do
    correct_option = Option.new(
      answer: Faker::Lorem.sentence,
      question_id: question.id,
      is_correct: true
    )
    correct_option.save!
  end
end