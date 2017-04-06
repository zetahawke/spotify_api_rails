class User < ApplicationRecord
  def self.register_user(username)
    founded_user = RSpotify::User.find(username)
    User.create(username: founded_user.display_name, follows: founded_user.followers['total'])
  rescue StandardError => e
    puts e.message
  end
end
