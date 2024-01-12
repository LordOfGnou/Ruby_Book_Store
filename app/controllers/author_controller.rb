class AuthorController < ApplicationController
   def get_all_authors
      @authors = Author.all
      render json: { "data": @authors }, include: [:books]
   end

   def get_author_by_id
      @author = Author.find(params[:id])
      render json: { "data": @author }, include: [:books]
   end
end
