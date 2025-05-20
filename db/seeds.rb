# db/seeds.rb

require 'faker'

20.times do
  Task.create!(
    title: Faker::Lorem.sentence(word_count: 3),
    details: Faker::Lorem.paragraph(sentence_count: 2),
    created_at: Faker::Time.backward(days: 30, period: :evening),
    updated_at: Faker::Time.backward(days: 5, period: :afternoon)
  )
end

puts "✅ 20 tâches créées avec succès !"
