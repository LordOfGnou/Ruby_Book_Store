class CategoryController < ApplicationController
   def get_all_categories
      @categories = Category.all
      render json: { "data": @categories }, include: [:books]
   end

   def get_category_by_id
      @category = Category.find(params[:id])
      render json: { "data": @category }, include: [:books]
   end
end
