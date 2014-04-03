class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)

    if @message.save
      Notifier.new_message(@message).deliver!
      redirect_to root_url
    else
      flash.now[:errors] = @message.errors.full_message
    end
  end


  private
  def message_params
    params.permit(:name, :message, :email)
  end
end
