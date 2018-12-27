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
    @teacher = Teacher.find(params[:id])
  end

  def index
    @teacher = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    @teacher.update(teachers_params)
    redirect_to @teacher
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
