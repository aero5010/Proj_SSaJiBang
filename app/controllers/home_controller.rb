class HomeController < ApplicationController
  def main
    if user_signed_in?
      @diaries = Diary.where(user_id: current_user.id)
      @records = ReadingRecord.where(user_id: current_user.id)
      @plans = Plan.where(user_id: current_user.id)
      @num_d = @diaries.count()
      @num_r = @records.count()
    end
  end
end
