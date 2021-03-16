class ChaptersController < ApplicationController
  def index
    @chapters = Chapter.all
  end
  
  def show
    @chapter = Chapter.find(params[:id])
  end
  
  def new
    @chapter = Chapter.new
  end
  
  def create
    @chapter = Chapter.new(params.require(:chapter).permit(:chapter_num, :title, :page_start_at))
    if @chapter.save
      flash[:notice] = 'Chapter was created successfully.'
      redirect_to @chapter
    else
      render 'new'
    end
  end
end