class SessionsController < ApplicationController
  def new
  end

def create
  user = Admin.find_by_user_name(params[:session][:user_name])
  if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      log_in user
      redirect_to root_path
    else
      render 'new'
    end
end

def destroy
  user = current_user
  log_out user
  # session[:user_id] = nil
  redirect_to login_path
end

end
