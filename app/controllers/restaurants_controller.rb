class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  
    def index
      @restaurants = Restaurant.all
      render json: @restaurants, only: [:id, :name, :address]
    end
  
    def show
      @restaurant = Restaurant.includes(:pizzas).find(params[:id])
      render json: @restaurant.as_json(only: [:id, :name, :address], include: { pizzas: { only: [:id, :name, :ingredients] } })
    end
  
    def destroy
      @restaurant = Restaurant.find(params[:id])
      @restaurant.destroy
      head :no_content
    end
  
    private
  
    def record_not_found
      render json: { error: 'Restaurant not found' }, status: :not_found
    end
  end
  