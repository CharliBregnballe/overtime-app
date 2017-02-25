@user = User.create(email: "test@test.com",
                          password: "qwerty",
                          password_confirmation: "qwerty",
                          first_name: "Jon",
                          last_name: "Snow",
                          phone: "61669876")

AdminUser.create(email: "admin@test.com",
                          password: "qwerty",
                          password_confirmation: "qwerty",
                          first_name: "Admin",
                          last_name: "Name",
                          phone: "61669876")

puts "2 user created"

100.times do |post|
  Post.create(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end


puts "100 posts have been created"
