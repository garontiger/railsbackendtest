module Api
	class RestaurantsController < ApplicationController
		def index
			if params[:dish_id].present?
				restaurant = Dish.find(params[:dish_id]).restaurants
				render json:{restaurants:restaurant},:except => [:created_at, :updated_at],status: :ok
			else
				render json:{restaurants:Restaurant.all},:except => [:created_at, :updated_at],status: :ok
			end
		end

		def show
			restaurant = Restaurant.find(params[:id])
			render json: {restaurant:restaurant},:except => [:created_at, :updated_at],status: :ok
		end 

	end
end