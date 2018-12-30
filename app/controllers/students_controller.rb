class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(students_params)
    if @student.valid?
      @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def index
    @student = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(students_params)
    redirect_to '/students'
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to '/students'
  end

  private

  def students_params
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
