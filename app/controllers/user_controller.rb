class UserController < ApplicationController
  def index
    @users = User.all.order(follows: :desc)
  end

  def register_user
    User.register_user(params[:username])
  ensure
    redirect_to root_path
  end
end
