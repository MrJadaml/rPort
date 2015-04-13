class ProjectsController < ApplicationController

  def new
    @project = Project.new
  end

  def create
    project = Project.create(project_params)
    if project.save
      redirect_to :root
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def destroy
    project = Project.find(params[:id])
    if project.destroy
      redirect_to :root
    else
      render :edit
    end
  end

private

  def project_params
    params.require(:project).permit(:title, :avatar, :avatar_cache)
  end
end
