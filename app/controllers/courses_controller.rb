class CoursesController < ApplicationController

  def show
    @course = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to student_path(@course)
    else
      render :new
    end
  end

  private

  def course_params
    params.require(:course).permit(:name)
  end

end
