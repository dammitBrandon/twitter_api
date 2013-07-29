user = User.new(firstname: "brandon", lastname: "bailey", email: "bbailey@bbailey.com", password: "1234", password_confirmation: "1234")
user.save

post = Post.new(title: "new post", body: "Boy this is wack")
