
class SearchController < ApplicationController
  def search
    if params[:query].nil?
      @articles = []
    else
	  search = Article.search do 
	  	fulltext params[:query]
	  	order_by(:score, :desc)
	  end
	  @articles = search.results
	  # render json: search.results
	end
  end
end
