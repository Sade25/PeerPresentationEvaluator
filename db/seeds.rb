# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do
  last_name = Faker::Name.last_name.downcase
  Student.create!(
    fname: Faker::Name.first_name,
    lname: last_name,
    email: last_name + "." + Faker::Number.between(from: 1, to: 100).to_s + "@osu.edu",
  )
end

10.times do
  Presentation.create!(
    name: Faker::Movie.title,
  )
end

10.times do
  PresentationScore.create!(
    grade: Faker::Number.between(from: 0, to: 100),
    comment: Faker::Lorem.sentence,
    q1: Faker::Number.between(from: 1, to: 5),
    q2: Faker::Number.between(from: 1, to: 5),
    q3: Faker::Number.between(from: 1, to: 5),
    q4: Faker::Number.between(from: 1, to: 5),
    presentation_id: Faker::Number.between(from: 1, to: 10),
    student_id: Faker::Number.between(from: 1, to: 10),
  )
end

10.times do
  StudentPresentation.create!(
    student_id: Faker::Number.between(from: 1, to: 10),
    presentation_id: Faker::Number.between(from: 1, to: 10),
  )
end
