class User < ApplicationRecord
  def self.register_user(username)
    founded_user = RSpotify::User.find(username)
    User.create(username: username, follows: founded_user.followers['total'])
  rescue StandardError => e
    puts e.message
  end
end
