class SearchMovie

	def initialize(query)
		@query = query
	end

	def perform
		login_tmdb
		data_retrieval(@query)
	end

	def login_tmdb
		Tmdb::Api.key(ENV["THE_MOVIE_DB_KEY"])
	end

	def data_retrieval(query)
		Tmdb::Search.movie(query)
	end
end