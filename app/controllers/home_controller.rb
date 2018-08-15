class HomeController < ApplicationController
  def main
    if user_signed_in?
      @diaries = Diary.where(user_id: current_user.id)
      @num_d = @diaries.count()
    end
  end
end
