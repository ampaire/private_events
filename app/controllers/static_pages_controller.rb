class StaticPagesController < ApplicationController
  def home
    if current_user
      @user = current_user
      @user_events = @user.events
    end
  end

  def about
  end
end
