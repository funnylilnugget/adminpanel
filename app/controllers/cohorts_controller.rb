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
    @cohort = Cohort.find(params[:id])
  end

  def index
    @cohort = Cohort.all
  end

  def show
    @cohort = Cohort.find(params[:id])
  end

  def update
    @cohort = Cohort.find(params[:id])
    @cohort.update(cohorts_params)
    redirect_to '/cohorts'
end

  private

  def cohorts_params
    params.require(:cohort).permit(:name,
                                   :start_date,
                                   :end_date,
                                   :teacher_id, {student_ids: []},
                                   :course_id)
  end


end
