class SpendingsController < ApplicationController
   def new 
      @spending = Spending.new
    end

    def index
      @spendings = Spending.all
    end

    def edit
      @spending = Spending.find(params[:id])
    end
    
    def create
      @spending = Spending.new(spending_params)
      if @spending.save
        redirect_to root_path
      else
        render :new
      end
    end

    def update
      @spending = Spending.find(params[:id])
      @spending.update
    end
    
    def destroy
      @spending = Spending.find(params[:id])
      if @spending.destroy
        redirect_to root_path
      else
        render :new
      end
    end

    private
   
    def spending_params
      params.require(:spending).permit(:price, :tag_id, :recorded_at)
    end 

end