class TasksController < ApplicationController

  def index
    @task = Task.new
    @tasks = Task.all
  end

end
