class AdminsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admins_params)
    if @admin.valid?
      @admin.save
      redirect_to @admin
    else
      render 'new'
    end
  end

  def edit
  end

  def show
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
