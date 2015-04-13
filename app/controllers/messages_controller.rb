class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def create
    @message = Message.create(message_params)
    redirect_to :root if @message.save
  end

private

  def message_params
    params.require(:message).permit(:name, :email, :message)
  end

end
