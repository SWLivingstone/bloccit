
# Create Posts
50.times do
  Post.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

unique = Post.find_or_create_by!(
  title: "I am unique!",
  body: "One of a kind.  Nothing else like this!"
)

Comment.find_or_create_by(
  post: unique,
  body: "A unique comment for a unique post!"
)

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
