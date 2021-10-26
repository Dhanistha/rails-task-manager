class TaskController < ApplicationController
  def index
  @tasks = Task.all
end

  def find
    @task = @tasks.find(param[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_param)
    @task.save
  end

  private

  def task_param
    param.require(:task).permit(:details, :title)
  end
end
