class CommentsController < ApplicationController

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

  def new
    @tweet = Tweet.find(params[:tweet_id])
    @comment = Comment.new
  end

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @comment = Comment.new(comment_params)
    @comment.tweet = @tweet
    if @comment.save
      redirect_to tweet_path @tweet
    else
      render :new
    end
  end

  def destroy
    @tweet = Tweet.find(params[:tweet_id])
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to tweet_path @tweet
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :tweet_id)
  end
end
