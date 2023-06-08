class CommentsController < ApplicationController
  def index
    if params.has_key?(:user_id)
      comments = Comment.where("author_id = ?", params[:user_id])
    elsif params.has_key?(:artwork_id)
      comments = Comment.where("artwork_id = ?", params[:artwork_id])
    end
    
    render json: comments
  end

  def create
    comment = Comment.new(comment_params)
    if comment.save
      render json: comment, status: 201
    else
      render json: comment.errors.full_messages, status: 422
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    if comment.delete
      render json: "deleted", status: 204
    else
      render json: comment.errors.full_messages
    end
  end

  def comment_params
    params.require(:comment).permit(:body, :author_id, :artwork_id)
  end
end