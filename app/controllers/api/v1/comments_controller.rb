class Api::V1::CommentsController < ApplicationController
  before_action :load_and_authorize_resource, except: :create

  def create
    @comment = Comment.new(comment_params)
    authorize @comment
    if @comment.save
      render :show, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @comment.destroy ? head(:ok) : head(:unprocessable_entity)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :file, :task_id)
  end
end
