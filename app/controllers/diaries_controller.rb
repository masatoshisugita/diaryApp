class DiariesController < ApplicationController
before_action :login_required

  def index
    @diary = Diary.new
    @diaries = current_user.diaries.all
  end

  def create
    @diary = current_user.diaries.new(diary_params)
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
