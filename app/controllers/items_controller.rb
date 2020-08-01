class ItemsController < ApplicationController
    def index
        @item = Item.all

        render json: @item.to_json(include: :child)
    end
        
    def create 
        image = Cloudinary::Uploader.upload(params[:image])
        file = Cloudinary::Uploader.upload(params[:file])
        item = Item.create(image: image["url"], child_id: params["child_id"], file: file["url"])
        render json: item
    end
end