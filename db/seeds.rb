require 'faker'

User.destroy_all

5.times do
    user = User.create!(
        email: Faker::Internet.email,
        password: Faker::Game.title,
        description: Faker::Quote.famous_last_words,
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
    )
end