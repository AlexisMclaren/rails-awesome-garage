class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
  end

  def create
    @car = Car.find(params[:car_id])
    @favourite = Favourite.new
    @favourite.car = @car
    if @favourite.save
      redirect_to car_path(@car)
    else
      render 'cars/show', status: :unprocessable_entity
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to favourites_path(@favourite)
  end
end
