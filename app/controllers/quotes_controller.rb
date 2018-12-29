class QuotesController < ApplicationController

 def index
    @quotes = Quote.all
  end


  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)
    if @quote.save
      redirect_to root_path(@quote)
    else
      render 'new'
    end
  end

   def show
    @quote = Quote.find(params[:id])
   end

 private


  def quote_params
    params.require(:quote).permit(:content)
  end

end
