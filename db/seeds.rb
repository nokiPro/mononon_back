3.times do |n|
  user = User.new(
    name: "test_user_#{n}",
    email: "test_user@#{n}.com",
    capacity: 0
  )
	user.save!
end