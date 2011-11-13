class FavoritesController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index]

  def index
    @favorites = Favorite.all
  end

  def create
    @favorite = Favorite.new(:user_id => current_user.id, :thesis_id => params[:thesis_id])
    if @favorite.save
      render json: @favorite, status: :created
    end
  end
end