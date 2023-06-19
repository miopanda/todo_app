class TasksController < ApplicationController
  def index
    @tasks = Task.order(id: "DESC")
  end

  def create
    task = Task.create(title: params[:title])
    render json:{ task: task }
  end

end
