class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def index

    @tasks = Task.all

  end


  def show
    @task = Task.find(params[:id])
  end

  def new
    ?  # We'll see that in a moment.
  end

  def create
    @task = ?  # We'll see that in a moment.

  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.? # We'll see that in a moment.
  end

   def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

end
