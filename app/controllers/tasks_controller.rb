class TasksController < ApplicationController

  def index

    @tasks = Task.all

  end


  def show
    @task = Task.find(params[:id])
  end

  def new
    # ?  # We'll see that in a moment.
    @task = Task.new
    # redirect_to tasks_path
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    # /@task.? # We'll see that in a moment./
    redirect_to tasks_path
  end

   def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

private

  def task_params
    params.require(:task).permit(:title, :description)
  end
end


