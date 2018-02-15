class MoviesController < ApplicationController
	def index
	end

  def create
  	@query = params[:search]
  	redirect_to search_path(@query)
  end

  def search
		movies = SearchMovie.new(@query).perform
  end

end
