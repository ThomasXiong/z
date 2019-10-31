class ExamsController < ApplicationController
    
    def index
        
    @exams = Exam.all
    
    end
    
    def new
        
    @exams = Exam.new
        
    end
    
    def create
        
      @exams = Exam.new(exams_params)
      
      if @exams.save
          redirect_to @exams
      else
          render 'new'
      end
        
    end
    
    def show
        @exams = Exam.find(params[:id])
    end
    
    def edit
    
    @exams = Exam.find(params[:id])
    
    end
    
    def update 
        
        @exams = Exam.find(params[:id])
        if @exams.update(exams_params)
            redirect_to @exams
        else
            render 'edit'
        end 
    end
    
    def destroy
    
    @exams = Exam.find(params[:id])
    @exams.destroy
    redirect_to exams_path
     
    end
    
    private
    def exams_params
        params.require(:exams).permit(:name, :student_number)
    end
end
