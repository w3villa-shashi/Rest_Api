module Api::V1	
	class MoviesController < ApplicationController

		skip_before_action :verify_authenticity_token, only: [:create,:update,:destroy]
		def index
			# data = {movies: Movie.all}
			# render json: data
			@movie = Movie.all
			render json: @movie, status: :ok
		end

		# def new
		# 	@movie = Movies.new
		# end

		def create 
			# @movie = Movie.create(name:"",category:"",language:"",duration:"",director:"")
			# render json: @movie
			@movie = Movie.new(create_params)

			if @movie.save
				render json: @movie, status: :created
			else
				render json: @movie, status: :unprocessable_entity
			end
		end

		def update
			@movie = Movie.find(params[:id])
			 if @movie.update(create_params)
			 	render json: @movie, status: 200
			 else
			 	render json:@movie, status: :unprocessable_entity
			 end
		end

		def destroy
			@movie = Movie.find(params[:id])
			if @movie.destroy
				render json:@movie, status: 200
			else
				render json:@movie, status: :unprocessable_entity
			end
		end

		private

		def create_params
			params.require(:movie).permit(:name,:category,:language,:duration)
		end
	end
end
