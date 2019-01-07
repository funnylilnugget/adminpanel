class CoursesController < ApplicationController
  def new
    @admin = Admin.find(params[:admin_id])
    @course = Course.new
  end

  def create
    @course = Course.new(courses_params)
    if @course.valid?
      @course.save
      redirect_to admin_courses_path
    else
      render 'new'
    end
  end

  def edit
    @admin = Admin.find(params[:admin_id])
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
    redirect_to admin_courses_path
  end

  def destroy
    @course = Course.find(params[:id])
    respond_to do |format|
      format.js
    end
    @course.destroy
  end

  private

  def courses_params
    params.require(:course).permit(:name,
                                   :class_hours,
                                   :cohort_id)
  end


end
