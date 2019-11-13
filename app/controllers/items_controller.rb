class ItemsController < ApplicationController
    def index
      items = Item.all
    
      render json: items
    end

    def newpurchase
      updated = []
      
      params[:cart].each do |item| 
        item_to_update = Item.find{|i| i.id == item["id"]}
        item_to_update.update(hamster_id: params[:hamster_id])
        updated.push(item_to_update)
      end

      categories = Category.all
      # returnUpdated = [categories, updated]

      render json: categories
    end

end
