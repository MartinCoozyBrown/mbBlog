class UsersController < ApplicationController
  def new
    @user=User.new
  end

  # def create
  #   user+ User.find_by :email params[:email]
  #   if user && user.authenticate (params[:password])
  #     session[:user_id]= user.user_id
  #     redirect_to admin_root_path, :notice => "welcome #{user.email}"
  # end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      flash[:notice] = "Could not create new user"
    end 
  end 
  
  def edit
  end

  def update
  end

  def show
    @user=@current_User
  end

  def login
  end

  def authenticate
     user=User.find_by email: params[:email]
    if user && user.authenticate(params[:password])
      session[:user_id]= user.id
      redirect_to user_path(user.id)
    elsif 
      flash[:notice]="Wrong Dumbass!"
    end
  end
  
  private
  #creating or updating, use strong perams, but not always for searching. all post request need stong params
  #example of strong perams, should use for all user data
  def user_params
      params.require('user').permit(:email, :password, :password_confirmation)
  end
end
