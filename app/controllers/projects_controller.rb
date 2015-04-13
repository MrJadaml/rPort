class ProjectsController < ApplicationController

  def new
    @project = Project.new
  end

  def create
    project = Project.create(project_params)
    redirect_to :root if project.save
  end

private

  def project_params
    params.require(:project).permit(:title, :avatar, :avatar_cache)
  end
end
