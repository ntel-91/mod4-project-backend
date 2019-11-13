class SubCategoriesController < ApplicationController
    def index
        sub_cat = SubCategory.all
    
        render json: sub_cat
      end
end
