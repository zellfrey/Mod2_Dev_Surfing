class CoursesController < ApplicationController

    def index 
        @courses = Course.all 
    end

    def show 
        @course = Course.find(params[:id])
    end

    def new 
        @course = Course.new 
    end

    def create 
        #@course = Course.new(course_params)
        # if @course.valid?
        #     @course.save
        #     redirect_to course_path(@course)
        # else
        #     render 'new'
        # end   
        @course = Course.create(course_params)
        redirect_to @course
    end

    def edit
        @course = Course.find(params[:id])
    end

    def update 
        @course = Course.find(params[:id])
        @course.update(course_params)

        redirect_to @course
    end

    


    private 

    def course_params
       params.require(:course).permit(:name, :description, 
                                    :start_date, :end_date, 
                                    :teacher_id, :skill_id, 
                                    :location_id, :img_url) 
    end
end