class PagesController < ApplicationController
  def index
  end

  def new
    @message = Message.new
  end

  

end
