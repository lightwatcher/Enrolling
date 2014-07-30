class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def new
  end

  def create
    @student = Student.new
    @student.name = params[:name]
    @student.email = params[:email]

    if @student.save
      redirect_to "/students/#{ @student.id }"
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.name = params[:name]
    @student.email = params[:email]

    if @student.save
      redirect_to "/students/#{ @student.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy


    redirect_to "/students"
  end
end
