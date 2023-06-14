class StudentController < ApplicationController
    def index
        @students = Student.all
        if @students.length > 0
            render action: "index"
            #render "index"
            #render template: "student/index"
            #render :index
        else
            render :none
        end
    end

    def get_student
        student = Student.find_by_id( params[:id] )
        if student
            render json: student, except: [:created_at, :updated_at]
        else
            render json: {error: "No student found"}
        end
    end
end