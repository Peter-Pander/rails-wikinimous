# db/seeds.rb

require 'faker'

10.times do
  title = Faker::Book.title
  paragraphs = Faker::Lorem.paragraphs(number: rand(8..15)).join("\n\n")
  content = "## #{title}\n\n#{paragraphs}"

  Article.create(
    title: title,
    content: content
  )
end
