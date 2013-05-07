class UsersController < ApplicationController
  before_filter :authorize, except: [:new, :signup, :create]

  def index
    @users = User.all

    render json: @users, except: [:password_hash, :password_salt]
  end

  def show
    @user = User.find(params[:id])

    render json: @user, except: [:password_hash, :password_salt]
  end

  def new
    @user = User.new
  end

  def edit
    @user = current_user
    
  end



  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, notice: "Signed up!"
    end
  end

  def signup
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, notice: "Signed up!"
    else
      redirect_to root_url, notice: "Something went wrong, please try again."
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    if @user.save
      redirect_to root_url, notice: "Account updated."
    else
      redirect_to root_url, notice: "Failed to update account."
    end
  end

  def destroy
    @user = User.find(params[:id])
  end

  def account
    @edit_user = User.find(session[:user_id])
  end

end
