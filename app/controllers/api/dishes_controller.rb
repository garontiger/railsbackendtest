module Api
	class DishesController < ApplicationController
		def index
			if params[:restaurant_id].present?
				dishes = Restaurant.find(params[:restaurant_id]).dishes
				render json:{dishes:dishes},:except => [:created_at, :updated_at],status: :ok
			else
				render json:{dishes:Dish.all},:except => [:created_at, :updated_at],status: :ok
			end
		end

		def show
			dish = Dish.find(params[:id])
			render json: {dish:dish},:except => [:created_at, :updated_at],status: :ok
		end 
	end
end