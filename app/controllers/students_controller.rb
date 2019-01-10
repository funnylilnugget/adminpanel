class StudentsController < ApplicationController
  def new
    @admin = Admin.find(params[:admin_id])
    @student = Student.new
  end

  def create
    @student = Student.new(students_params)
    if @student.valid?
      @student.save
      flash[:notice] = "Student successfully created"
      redirect_to admin_students_path
    else
      render 'new'
    end
  end

  def edit
    @admin = Admin.find(params[:admin_id])
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
    redirect_to admin_students_path
  end

  def destroy
    @student = Student.find(params[:id])
    respond_to do |format|
      format.js
    end
    @student.destroy
    end

  private

  def students_params
    params.require(:student).permit(:first_name,
                                    :last_name,
                                    :age,
                                    :education,
                                    :cohort_id,
                                    :quirk,
                                    :hero_name,
                                    :avatar
                                   )
  end


end
