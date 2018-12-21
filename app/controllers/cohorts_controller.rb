class CohortsController < ApplicationController
  def new
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.new(cohorts_params)
    if @cohort.valid?
      @cohort.save
      redirect_to @cohort
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

  def cohorts_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :teacher_id, {student_ids: []}, :course_id)
  end


end
