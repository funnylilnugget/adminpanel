class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teachers_params)
    if @teacher.valid?
      @teacher.save
      redirect_to @teacher
    else
      render 'new'
    end
  end

  def edit
  end

  def index
  end

  def show
  end

  private

  def teachers_params
    params.require(:teacher).permit(:first_name,
      :last_name,
      :age,
      :salary,
      :education,
      :cohort_id,
      :quirk,
      :hero_name
    )
  end


end
