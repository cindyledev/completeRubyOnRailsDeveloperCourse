class ChaptersController < ApplicationController
  before_action :set_chapter, only: [:show, :edit, :update, :destroy]
  
  def index
    @chapters = Chapter.all
  end
  
  def show
  end
  
  def new
    @chapter = Chapter.new
  end
  
  def edit
  end
  
  def create
    @chapter = Chapter.new(chapter_params)
    @chapter.material = Material.first
    if @chapter.save
      flash[:notice] = 'Chapter was created successfully.'
      redirect_to @chapter
    else
      render 'new'
    end
  end
  
  def update
    if @chapter.update(chapter_params)
      flash[:notice] = 'Chapter was updated successfully.'
      redirect_to @chapter
    else
      render 'edit'
    end
  end
  
  def destroy
    @chapter.destroy
    redirect_to chapters_path
  end
  
  private
    def set_chapter
      @chapter = Chapter.find(params[:id])
    end
    
    def chapter_params
      params.require(:chapter).permit(:chapter_num, :title, :page_start_at)
    end
end