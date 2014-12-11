class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new
    @favorite.apartment_id = params[:apartment_id]
    @favorite.favorited_by_id = params[:favorited_by_id]

    if @favorite.save
      redirect_to "/favorites", :notice => "Favorite created successfully."
    else
      render 'new'
    end
  end

  # def edit
  #   @favorite = Favorite.find(params[:id])
  # end

  # def update
  #   @favorite = Favorite.find(params[:id])

  #   @favorite.apartment_id = params[:apartment_id]
  #   @favorite.favorited_by_id = params[:favorited_by_id]

  #   if @favorite.save
  #     redirect_to "/favorites", :notice => "Favorite updated successfully."
  #   else
  #     render 'edit'
  #   end
  # end

  def destroy
    @favorite = Favorite.find(params[:id])

    @favorite.destroy

    redirect_to "/favorites", :notice => "Favorite deleted."
  end
end
