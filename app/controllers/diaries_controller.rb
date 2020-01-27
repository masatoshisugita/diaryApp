class DiariesController < ApplicationController
  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      redirect_to root_path
    else
      render :index
    end
  end

  def update
  end

  private
  def diary_params
    params.require(:diary).permit(:weight,:comment)
  end

end
