class Api::V1::CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    authorize comment
    if comment.save
      render json: CommentSerializer.new(comment).serialized_json, status: :created
    else
      render json: comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    comment = Comment.find_by(id: params[:id])
    authorize comment
    if comment.destroy
      render json: { deleted: true }, status: :ok
    else
      render json: comment.errors, status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :file, :task_id)
  end
end
