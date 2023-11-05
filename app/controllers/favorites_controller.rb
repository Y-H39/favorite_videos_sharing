class FavoritesController < ApplicationController
  def create
    Favorite.create(user_id: current_user.id, post_id: params[:post_id])
    redirect_to posts_path
  end

  def destroy
    Favorite.find_by(user_id: current_user.id, post_id: params[:post_id]).destroy
    redirect_to posts_path
  end
end
