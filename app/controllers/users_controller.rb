class UsersController < ApplicationController
  before_filter :authorize

  def index
    @user = User.new
    @users = User.all

    render json: @users
  end

  def create
    
  end

  def update
    
  end

  def destroy
    
  end

end
