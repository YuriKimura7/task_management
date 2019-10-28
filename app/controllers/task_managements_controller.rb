class TaskManagementsController < ApplicationController
  def index
    @task_managements = TaskManagement.all
  end
end
