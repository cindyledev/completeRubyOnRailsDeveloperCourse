class ChaptersController < ApplicationController
  def index
    @chapters = Chapter.all
  end
  
  def show
    @chapter = Chapter.find(params[:id])
  end
  
  def new
    
  end
  
  def create
    @chapter = Chapter.new(params.require(:chapter).permit(:chapter_num, :title, :page_start_at))
    @chapter.save
    redirect_to @chapter
  end
end