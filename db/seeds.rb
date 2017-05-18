User.create!(username: "Lvl 80 Admin",
             email: "vic@admin.com",
             password: "password",
             password_confirmation: "password",
             admin: true)

# create 50 users
50.times do |num|
  name = Faker::Name.name
  email = "test-#{num + 1}@liltwitter.com"
  password = 'password'
  User.create!(username: name,
               email: email,
               password: password,
               password_confirmation: password)
end

users = User.order(:created_at).take(8)
50.times do
  users.each do |user|
    user.snippets.create!(title: Faker::Book.title,
                          content: Faker::ChuckNorris.fact)
  end
end
