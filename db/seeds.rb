# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

    puts 'Creating Countries...'
    until Country.count == 20 do
        Country.create(name: Faker::Address.country) if !Country.pluck(:name).include?(Faker::Address.country)
    end

    countries = Country.all


    puts 'Creating Adventures...'
    until Adventure.count == 100 do
        Adventure.create(
            title: Faker::Book.title, 
            description: Faker::Lorem.paragraph_by_chars(number: 200, supplemental: false), 
            when_went: Faker::Date.between(from: 10.years.ago, to: Date.today), 
            country_id: countries.sample.id)
    end

    puts 'Creating Users...'
    i = 0
    until User.count == 20 do
        User.create(
            email: "test#{i}@gmail", 
            password: "123456",
            password_confirmation: "123456",
            photo: Faker::Avatar.image, 
            name: Faker::Name.name)
            i += 1
        end

    adventures = Adventure.all
    users = User.all

    puts 'Creating Comments...'
    until Comment.count == 1000 do
        Comment.create(
            content: Faker::Lorem.paragraph_by_chars(number: 200,supplemental: false), 
            adventure_id: adventures.sample.id, 
            user_id: users.sample.id)
    end


    r_type = %w[adventure comment]
    comments = Comment.all
    kinds = Adventure::Kinds

    puts 'Creating Reactions...'
    until Reaction.count == 1000 do
        rel_type = r_type.sample
        if rel_type == "adventure"
            Reaction.create(
                adventure_id: adventures.sample.id, user_id: users.sample.id, kind: kinds.sample, reaction_type: rel_type)
        else
            Reaction.create(
                comment_id: comments.sample.id, user_id: users.sample.id, kind: kinds.sample, reaction_type: rel_type)
        end
    end