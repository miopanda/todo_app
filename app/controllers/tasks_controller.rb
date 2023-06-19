class TasksController < ApplicationController
  def index
    @tasks = Task.order(id: "DESC")
  end

  # def new
  #   @task = Task.new
  # end

  def create
    Task.create(title: params[:title])
    redirect_to action: :index
  end

end
