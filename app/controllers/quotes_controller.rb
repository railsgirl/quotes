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
            flash[:success] = 'The quote was successfully added!'
            redirect_to action: 'index' 
        else 
            render :new
        end 
    end

private
    def quote_params
        params.require(:quote).permit(:content)
    end

end
