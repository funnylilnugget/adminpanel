class AdminsController < ApplicationController

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admins_params)
    if @admin.valid?
      @admin.save
      log_in @admin
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def update
    @admin = Admin.find(params[:id])
    @admin.update(admins_params)
    redirect_to root_path
  end

  def index

  end

private

  def admins_params
    params.require(:admin).permit(:first_name,
                                    :last_name,
                                    :user_name,
                                    :password,
                                    :email,
                                    :password_confirmation
                                    )
  end
end
