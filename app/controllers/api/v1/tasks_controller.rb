class Api::V1::TasksController < ApplicationController
  before_action :load_and_authorize_resource, except: :create

  def create
    @task = Task.new(task_params)
    authorize @task
    if @task.save
      render json: TaskSerializer.new(@task).serialized_json, status: :created
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  def update
    Tasks::UpdatePositionService.new(@task, task_position_param).call if task_position_param

    if @task.update(task_params)
      render json: TaskSerializer.new(@task).serialized_json, status: :ok
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy ? head(:ok) : head(:unprocessable_entity)
  end

  private

  def task_params
    params.require(:task).permit(:name, :deadline, :is_done, :project_id)
  end

  def task_position_param
    params.require(:task)[:position]
  end
end
