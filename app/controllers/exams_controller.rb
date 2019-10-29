class ExamsController < ApplicationController
    
    def new
        
    end
    
    def create
        
      @exams = Exam.new(exams_params)
      
      @exams.save
      redirect_to @exams
        
    end
    
    def show
        @exams = Exam.find(params[:id])
    end
    
    private
    def exams_params
        params.require(:exams).permit(:name, :student_number)
    end
end
