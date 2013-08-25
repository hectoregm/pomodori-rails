class PomodoriController < ApplicationController

  # GET /track
  def track
    @task = Task.find(params[:task_id])
  end
end
