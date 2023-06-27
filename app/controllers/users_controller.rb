class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_attributes)
    if user.valid? && user_attributes[:password] == user_attributes[:password_confirmation]
      user.save
      session[:user_id] = user.id
      redirect_to user_path(user)
    elsif user.valid? && params[:password]!= params[:password_confirmation]
      flash[:error] = "Passwords do not match"
      redirect_to register_path
    else
      redirect_to register_path
      flash[:error] = user.errors.full_messages.join(", ")
    end
  end

  def show
    if session[:user_id] == params[:id].to_i
      @user = User.find(params[:id])
    else
      redirect_to root_path
      flash[:notice] = "You must be registered and logged in as the correct user to view this dashboard"
    end
  end


  private

  def user_attributes
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :emergency_contact_name, :emergency_contact_phone, :emergency_contact_relationship)
  end
end