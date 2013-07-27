class TasksController < ApplicationController

  def index
    @task = Task.new
    @tasks = Task.all
  end

  def create
    @task = Task.create(blog_params)
    @tasks = Task.all

    if @task.valid?
      @task = Task.new
    else
      flash.now[:error] = "An error ocurred"
    end
    render action: :index
  end

  private

  def blog_params
    params.require(:task).permit(:name, :estimate)
  end

end
