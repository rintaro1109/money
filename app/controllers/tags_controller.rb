class TagsController < ApplicationController
    def new
      @tag = Tag.new
    end

    def index
      @tags = Tag.all
    end

    def edit 
      @tag = Tag.find(params[:id])
    end

    def create
      @tag = Tag.new(tag_params)
      if @tag.save
        redirect_to root_path
      else
        render :new
      end
    end

    def update
      @tag = Tag.find(params[:id])
      @tag.update
    end

    def destroy
      @tag = Tag.find(params[:id])
      if @tag.destroy
        redirect_to root_path
      else
        render :new
      end
    end

    private
    
    def tag_params
        params.require(:tag).permit(:name)
    end

end
