class ExamsController < ApplicationController
    
    def new
        
    end
    
    def create
        
        render plain: params[:exams].inspect
        
    end
    
end
