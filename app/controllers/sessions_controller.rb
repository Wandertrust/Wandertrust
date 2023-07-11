class SessionsController < ApplicationController
  def omniauth
    user = User.from_omniauth(request.env['omniauth.auth'])
    if user.valid?
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to '/login'
      flash[:error] = "Oops, it looks like that sign in method didn't work."
    end
  end
end