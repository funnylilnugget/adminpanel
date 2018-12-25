class CoursesController < ApplicationController
  def new
    @course = Course.new
  end

  def create
    @course = Course.new(courses_param)
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

  private

  def courses_param
    params.require(:course).permit(:name,
                                   :class_hours,
                                   :cohort_id)
  end


end
