class BooksController < ApplicationController
   def get_all_books
      @books = Book.all
      render json: { "data": @books }, include: [:authors, :categories]
   end

   def get_book_by_id
      @book = Book.find(params[:id])
      render json: { "data": @book }, include: [:authors, :categories]
   end

   def add_book
      if api_user_signed_in?
         Book.create [
            {
               title: params[:book][:title],
               year: params[:book][:year]
            }
         ]
         render json: { "data": "done" }
      else
         render json: { "data": "Not logged in" }
      end
   end

   def delete_by_id
      if api_user_signed_in?
         Book.delete(params[:id])
         render json: { "data": "book number #{params[:id]} deleted" }
      end
   end
end
