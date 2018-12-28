class CommentsController < ApplicationController
     before_action :set_quote, only: :create
def index
    @comments = Comment.all
  end


def create
    @quote = Quote.find(params[:quote_id])
    @comment = Comment.new(comment_params)
    @comment.quote = @quote
    if @comment.save
      redirect_to root_path(@quote)
    else
      render "comments/new"
    end
  end




  private

  def set_quote
    @quote = Quote.find(params[:quote_id])
  end


  def comment_params
    params.require(:comment).permit(:text, :quote_id)
  end

end
