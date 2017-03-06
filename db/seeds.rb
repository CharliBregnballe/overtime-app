@user = Employee.create(email: "test@test.com",
                          password: "qwerty",
                          password_confirmation: "qwerty",
                          first_name: "Jon",
                          last_name: "Snow",
                          phone: "4561669876")

puts "1 User created!"

AdminUser.create(email: "charli@kompjuter.dk",
                          password: "qwerty",
                          password_confirmation: "qwerty",
                          first_name: "Admin",
                          last_name: "Name",
                          phone: "4561669876")

puts "1 Admin User created"

AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))


puts "3 audit logs created"


100.times do |post|
  Post.create!(date: Date.today, rationale: "Lorem Ipsum er ganske enkelt fyldtekst fra print- og typografiindustrien. Lorem Ipsum har været standard fyldtekst siden 1500-tallet, hvor en ukendt trykker sammensatte en tilfældig spalte for at trykke en bog til sammenligning af forskellige skrifttyper. Lorem Ipsum har ikke alene overlevet fem århundreder, men har også vundet indpas i elektronisk typografi uden væsentlige ændringer. Sætningen blev gjordt kendt i 1960'erne med lanceringen af Letraset-ark, som indeholdt afsnit med Lorem Ipsum, og senere med layoutprogrammer som Aldus PageMaker, som også indeholdt en udgave af Lorem Ipsum.", user_id: @user.id, overtime_request: 2.5)
end


puts "100 posts have been created"

