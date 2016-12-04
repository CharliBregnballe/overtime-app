@user = User.create(email: "test@test.com",
                          password: "qwerty",
                          password_confirmation: "qwerty",
                          first_name: "Jon",
                          last_name: "Snow")

AdminUser.create(email: "admin@test.com",
                          password: "qwerty",
                          password_confirmation: "qwerty",
                          first_name: "Admin",
                          last_name: "Name")

puts "1 user created"

100.times do |post|
  Post.create(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end


puts "100 posts have been created"
