class UsersController < ApplicationController

  def sign_up
  end

  def dashboard
  end

  def edit_profile
  end

  def update_profile

    current_user.first_name = params[:first_name]
    current_user.last_name = params[:last_name]
    current_user.university_id = params[:university_id]
    current_user.introduction = params[:introduction]
    current_user.profile_pic = params[:profile_pic]

    if current_user.save
      redirect_to "/users/dashboard", :notice => "User updated successfully."
    else
      render 'edit_profile'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.email = params[:email]
    @user.university_id = params[:university_id]
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

  # def index
  #   @users = User.all
  # end

  # def new
  #   @user = User.find(params[:id])
  # end

  # def create
  #   @user = User.find(params[:id])

  #   @user.email_edu = params[:email_edu]
  #   @user.university = params[:university]
  #   @user.introduction = params[:introduction]

  #   if @user.save
  #     redirect_to "/users", :notice => "User registered successfully."
  #   else
  #     render 'new'
  #   end
  # end

  # def edit
  #   @user = User.find(params[:id])
  # end

end
