class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to root_url
    else
      flash.now[:errors] = @user.errors.full_message
  end


  private
  def message_params
    params.permit(:name, :message, :email)
  end
end
