class TaskManagementsController < ApplicationController
  def index
    @task_managements = TaskManagement.all
    @task_managements = @task_managements.where(title: params[:search_title]) if params[:search_title].present?
    @task_managements = @task_managements.where(status: params[:search_status]) if params[:search_status].present?
  end

  def new
    @task_management = TaskManagement.new
  end

  def create
    @task_management = TaskManagement.new(task_management_params)
    if @task_management.save
      redirect_to task_managements_path, notice: "課題を登録しました。"
    else
      render "new"
    end
  end

  def show
    @task_management = TaskManagement.find(params[:id])
  end

  def edit
    @task_management = TaskManagement.find(params[:id])
  end

  def update
    @task_management = TaskManagement.find(params[:id])
    if @task_management.update(task_management_params)
      redirect_to task_management_path, notice: "更新しました"
    else
      render "edit"
    end
  end

  private
  def task_management_params
    params.require(:task_management).permit(:title, :deadline, :memo, :status)
  end
end
