class DiariesController < ApplicationController
before_action :login_required

  def index
    @diary = Diary.new
    @diaries = current_user.diaries.all

    count = current_user.diaries.length
    
    gon.data = []
    @diaries[0..count].each do |i|
      gon.data << i.weight
    end

    gon.label = []
    @diaries[0..count].each do |i|
      gon.label << i.created_at.strftime('%Y/%m/%d')
    end
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
