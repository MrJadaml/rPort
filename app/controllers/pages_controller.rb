class PagesController < ApplicationController

  def index
    @message = Message.new
    @projects = Project.all
  end

end
