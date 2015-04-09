class PagesController < ApplicationController
  def index
    @message = Message.new
  end

  def new
    @message = Message.new
  end



end
