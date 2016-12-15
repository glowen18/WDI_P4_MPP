class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    
    if @project.save
      redirect_to :projects
    else
      render :new
    end
  end

  def new
    @project = Project.new
  end

  def show
  end

  def edit
  end

  def update
    if @project.update_attributes(project_params)
      redirect_to :projects
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to projects.path
  end

  private

    def project_params
      params.require(:project).permit(:title)
    end

    def set_project
      project = Project.find(params[:id])
    end

end
