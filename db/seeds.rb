# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

blue_alps_facility = Facility.create(name: 'Blue Alps')

admission = Admission.create(moment: Time.now)

Patient.create(first_name: 'Bojack', middle_name: 'Horse', last_name: 'Man',
               mr: '1234', dob: (Time.now - 10.years), gender: 1,
               admission: admission, facility: blue_alps_facility)
