class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end
end
