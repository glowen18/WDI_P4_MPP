class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:login][:email].downcase)
    if user && user.authenticate(params[:login][:password])
      session[:user_id] = user.id.to_s
      # session[:user_id] = user.id.to_s
      redirect_to users_path
    else
     render :new
   end
  end

  # def update
  #   @user = User.find(params[:id])
  #   if @user.update_attributes(user_params)
  #     flash[:success] = "Profile updated"
  #     redirect_to @user
  #   else
  #     render 'edit'
  #   end
  # end
  #
  # def edit
  #   user = User.find_by(params[:id])
  # end

  def destroy
    @sessions.destroy(:user_id)
    redirect_to login_path
  end
end
