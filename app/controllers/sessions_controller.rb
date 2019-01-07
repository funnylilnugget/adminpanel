class SessionsController < ApplicationController
  def new
    @admin = Admin.new
  end

def create
  @admin = Admin.find_by_user_name(params[:session][:user_name])
  if @admin && @admin.authenticate(params[:session][:password])
      session[:user_id] = @admin.id
      redirect_to root_path
    else
      render 'new'
    end
end

def destroy
  session[:user_id] = nil
  redirect_to login_path
end

end
