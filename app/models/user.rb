class TwitterUser < ActiveRecord::Base
  #attr_accessor :password

  # has_many :posts
  # has_many :comments, as: :commentable

  # validates :firstname, presence: true, length: { in: 2..25 }
  # validates :lastname, presence: true, length: { in: 2..25 }
  # validates :username, presence: true, uniqueness: true, length: { in: 2..25 }

  # validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "%{value} is not a valid email address." }

  # validates :password, presence: { message: "Password cannot be empty" },
  #                                  length: {
  #                                            in: 6..15,
  #                                            too_short: "Password is too short, must be longer than %{value} characters long",
  #                                            too_long: "Password is too long, must be shorter than %{value} characters long" 
  #                                           }


  # has_secure_password

end
