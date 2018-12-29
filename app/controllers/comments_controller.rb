class CommentsController < ApplicationController
 skip_before_action :verify_authenticity_token
  before_action :set_quote, only: [:new, :create]

  def index
    @comments = Comment.all
  end


def new
    @comment = Comment.new
   # @quote = Quote.find_by_id[:quote_id]
  end

def create
    @comment = Comment.new(comment_params)
    @comment.quote = @quote
    if @comment.save
      redirect_to root_path
    else
      render :new
    end
  end











  private

  def set_quote
    @quote = Quote.find(params[:quote_id])
  end

  def comment_params
    params.require(:comment).permit(:text, :author, :quote_id)
  end



end
