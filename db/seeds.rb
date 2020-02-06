# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

array_p = []
array_d = []

20.times{
  p = Patient.create!(first_name: Faker::Superhero.name)
  d = Doctor.create!(first_name: Faker::Movies::LordOfTheRings.character)
  array_p << p
  array_d << d
}

20.times{
  appointment = Appointment.create!(date: Faker::Date.between(from: Date.today, to: 6.months.from_now) , patient: array_p.sample, doctor: array_d.sample)
 }
