class Admin::UsersController < ApplicationController
  layout "administration"
  def index
    @users = User.all
  end

  def show
  end

end
