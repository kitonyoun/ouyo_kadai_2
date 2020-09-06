class FavoritesController < ApplicationController

  def create
  	user = current_user
  	book = Book.find(params[:book_id])
  	favorite = current_user.favorites.new(book_id: book.id)
  	favorite.save
  	redirect_to request.referer
  end

  def destroy
  	user = current_user
  	book = Book.find(params[:book_id])
    favorite = current_user.favorites.find_by(book_id: book.id)
    favorite.destroy
    redirect_to request.referer
  end

end
