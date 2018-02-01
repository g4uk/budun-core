class TasksController < ApplicationController
  before_action :authenticate_user!, except: [ :index ]

  def index
    @tasks = Task.all
    render json: @tasks
  end
  def create
    task = Task.create(
      title: params[:title],
      body: params[:body]
    )
    render json: { task: task }
  end
end
