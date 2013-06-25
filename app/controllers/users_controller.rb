class UsersController < ApplicationController
  before_filter :authorize, except: [:new, :signup, :create]

  def index
    @users = User.all

    render json: @users, except: [:password_hash, :password_salt]
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, notice: "Signed up!"
    else
      redirect_to root_url, notice: "Something went wrong, please try again."
    end
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])

    render json: @user, except: [:password_hash, :password_salt]
  end

  def update
    current_user.update_attributes(params[:user])
    if current_user.save
      redirect_to root_url, notice: "Account updated."
    else
      redirect_to root_url, notice: "Failed to update account. Please enter your password."
    end
  end

  def destroy
    @user = User.find(params[:id])
  end

end
