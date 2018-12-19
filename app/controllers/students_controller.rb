class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(students_param)
    if @student.valid?
      @student.save
      redirect_to @student
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

  def students_param
    params.require(:student).permit(:first_name,
      :last_name,
      :age,
      :education,
      :cohort_id,
      :quirk,
      :hero_name
    )
  end


end
