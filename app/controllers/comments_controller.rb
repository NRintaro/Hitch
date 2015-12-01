class CommentsController < ApplicationController
  def new
  end

  def create
    @comment = Comment.new
    @comment.name = params[:name]
    @comment.content = params[:content]
    if @comment.save
      redirect_to #コメントをした投稿
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_to #コメントがあった投稿
    else
      render :new
    end
  end
end
