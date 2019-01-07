class CohortsController < ApplicationController
  def new
      @admin = Admin.find(params[:admin_id])
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.new(cohorts_params)
    if @cohort.valid?
      @cohort.save
      redirect_to admin_cohorts_path
    else
      puts @cohort.errors.full_messages
      render 'new'
    end
  end

  def edit
    @admin = Admin.find(params[:admin_id])
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
    if @cohort.update(cohorts_params)
    redirect_to admin_cohorts_path
  end
end

  def destroy
    @cohort = Cohort.find(params[:id])
    respond_to do |format|
      format.js
    end
    @cohort.destroy
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
