# db/seeds.rb

require 'faker'

10.times do
  Article.create(
    # Remove the full stop
    title: Faker::Lorem.sentence.chomp('.'),
    content: Faker::Lorem.paragraph
  )
end
