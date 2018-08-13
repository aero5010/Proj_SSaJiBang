class HomeController < ApplicationController
  def main
    @diaries = Diary.where(user_id: current_user.id)
  end
end
