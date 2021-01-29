class UserRoomsController < ApplicationController
  before_action :load_user_room, only: %i[show update]

  def show
  end

  def update
    message = @user_rooms.messages.build(content: params[:message_content])
    message.save
    redirect_to feeds_path
  end

  private

  def load_user_room
    @user_rooms = current_user.user_rooms.find(params[:id])
  end
end
