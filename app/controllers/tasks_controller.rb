class TasksController < ApplicationController
  	before_action :set_task, only: [:show, :edit, :update, :destroy]

    def index
      @tasks = Task.all
    end

    def new
      @project = Project.find(params[:project_id])
      @task = Project.new
    end

  	def create
      @project = Project.find(params[:project_id])
  		@task = Task.new(task_params)

      if @task.save
        redirect_to @project, notice: "Your project was successfully created!"
      else
        redirect_to @project, notice: "Your project was not successfully created!"
      end
  	end

    def edit
    end

    def update
      if @task.update_attributes(task_params)
        redirect_to @task, notice: 'Task was successfully updated!'
      else
        render :edit
      end
    end

  	def destroy
  		@task.destroy
  		redirect_to @project, notice: 'Task was successfully deleted!'
  	end


  private
  	def set_task
      @task = Task.find(params[:id])
  		@project = Project.find(params[:project_id])
  	end

  	def task_params
      params.require(:task).permit(:task_date, :title, :description, :user_id, :project_id)
  	end
end
