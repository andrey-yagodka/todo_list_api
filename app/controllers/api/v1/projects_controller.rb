class Api::V1::ProjectsController < ApplicationController
  before_action :load_and_authorize_resource, except: :create

  def create
    @project = current_user.projects.new(project_params)
    authorize @project
    if @project.save
      render json: ProjectSerializer.new(@project).serialized_json, status: :created
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  def update
    if @project.update(project_params)
      render json: ProjectSerializer.new(@project).serialized_json, status: :ok
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @project.destroy ? head(:ok) : head(:unprocessable_entity)
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end
end
