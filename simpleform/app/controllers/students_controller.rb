class StudentsController < ApplicationController
  def new
    @student = Student.new
    @students = Student.find(:all)
    @college = College.new
  end
  
  def create
    @student = Student.new(params[:student])
    if @student.save
      redirect_to new_student_path
    end
    if @college.save
      redirect_to new_college_path
      
    end  
  end
    def show
        @student = Student.show
    end
end
