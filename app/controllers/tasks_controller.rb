class TasksController < ApplicationController

  # GET /tasks
  def index
    @task = Task.new
    @tasks = Task.all
  end

  # POST /tasks
  def create
    @task = Task.create(task_params)
    @tasks = Task.all

    if @task.valid?
      @task = Task.new
    else
      flash.now[:error] = "An error ocurred"
    end
    render action: :index
  end

  # DELETE /tasks/1
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_url
  end

  private

  def task_params
    params.require(:task).permit(:name, :estimate)
  end

end
