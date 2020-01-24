# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @events = @user.events
    @upcoming_events = current_user.upcoming_events
    @prev_events = current_user.prev_events
  end

  def attending
    @event = Event.find(params[:id])
    @user = current_user.attended_events << @event
    @user.save
    redirect_to event_path(id: @event.id)
  end

  def not_attending
    @event = Event.find(params[:id])
    @user = current_user.attended_events.delete(@event)
    redirect_to event_path(id: @event.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
