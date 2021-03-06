class CommentsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :new, :create]

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new comment_params

    if @comment.save
      redirect_to comments_path
    else
      render :new
    end
   
  end

  def edit
  end

  def show
  end

  def destroy
    @comment = Comment.destroy

    redirect_to comments_path

  end

private
  def comment_params
    params.require(:comment).permit(:title, :name, :text)
  end

end