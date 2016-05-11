Fabricator(:idea) do
  title Faker::Hipster.word
  body Faker::Hipster.sentence
end
