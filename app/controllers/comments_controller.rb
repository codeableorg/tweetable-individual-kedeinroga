class CommentsController < ApplicationController
  def new
  end

  def edit
    @tweet = Tweet.find(params[:tweet_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:tweet_id])
    @comment = Comment.find(params[:id])

    if @comment.update(comment_params)
      redirect_to tweet_path @tweet
    else
      render :edit
    end
  end

  def create
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :tweet_id)
  end
end
