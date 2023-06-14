class RegistrationsController < ApplicationController
  def new
    if Current.user
      redirect_to articles_path
    else
      @user = User.new
    end

  end
  def create
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to root_path, notice: 'Successfully created account'
      else
        render :new
      end
  end
  private

  def user_params
    # strong parameters
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
