class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def dashboard
  end

  def edit_profile
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.find(params[:id])
  end

  def create
    @user = User.find(params[:id])

    @user.email_edu = params[:email_edu]
    @user.university = params[:university]
    @user.introduction = params[:introduction]

    if @user.save
      redirect_to "/users", :notice => "User registered successfully."
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    @user.email_edu = params[:email_edu]
    @user.university = params[:university]
    @user.introduction = params[:introduction]

    if @user.save
      redirect_to "/users", :notice => "User updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy

    redirect_to "/users", :notice => "User deleted."
  end
end
