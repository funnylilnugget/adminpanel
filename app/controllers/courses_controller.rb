class CoursesController < ApplicationController
  def new
    @course = Course.new
  end

  def create
    @course = Course.new(courses_params)
    if @course.valid?
      @course.save
      redirect_to @course
    else
      render 'new'
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def index
    @course = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update(courses_params)
    redirect_to '/courses'
  end

  private

  def courses_params
    params.require(:course).permit(:name,
                                   :class_hours,
                                   :cohort_id)
  end


end
