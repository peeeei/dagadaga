class RoomsController < ApplicationController
  def show
    @messages = Message.all
    @last_id = Message.last
    @users = User.all
  end
end
