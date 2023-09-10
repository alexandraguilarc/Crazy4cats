# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

    puts 'Creating Country...'
    until Country.count == 20 do
        Country.create(name: Faker::Address.country) if !Country.pluck(:name).include?(Faker::Address.country)
    end

    countries = Country.all


    puts 'Creating Adventure...'
    until Adventure.count == 100 do
        Adventure.create(
            title: Faker::Book.title, 
            description: Faker::Lorem.paragraph_by_chars(number: 200, supplemental: false), 
            when_went: Faker::Date.between(from: 10.years.ago, to: Date.today), 
            country_id: countries.sample.id)
    end