class StudentsController < ApplicationController

    before_action :set_student, only: [:show, :edit, :update]

    def index
      @students = Student.all
    end

    def new
      @student = Student.new
    end

    def create
      @student = Student.new(student_params)
      if @student.save
        flash[:success] = "Successfully created #{@student.name}!"
        redirect_to student_path(@student)
      else
        render :new
      end
    end

    def edit
    end

    def update
      @student.update(student_params)
      @student.save

      redirect_to student_path(@student)
    end

    def show
    end

    private

    def student_params
      params.require(:student).permit(:name)
    end

    def set_student
      @student = Student.find(params[:id])
    end
end
