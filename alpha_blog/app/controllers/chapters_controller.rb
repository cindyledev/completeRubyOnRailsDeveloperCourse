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
  
  def edit
    @chapter = Chapter.find(params[:id])
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
  
  def update
    @chapter = Chapter.find(params[:id])
    if @chapter.update(params.require(:chapter).permit(:chapter_num, :title, :page_start_at))
      flash[:notice] = 'Chapter was updated successfully.'
      redirect_to @chapter
    else
      render 'edit'
    end
  end
  
  def destroy
    @chapter = Chapter.find(params[:id])
    @chapter.destroy
    redirect_to chapters_path
  end
end