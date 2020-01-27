class HomesController < ApplicationController

  def index
    @diary = Diary.new
    @diaries = Diary.all
  end


end
