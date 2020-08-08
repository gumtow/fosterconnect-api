class ItemsController < ApplicationController
    def index
        @item = Item.all

        render json: @item.to_json(include: :child)
    end
        
    def create 
        puts params
        if params[:image]
            image = Cloudinary::Uploader.upload(params[:image])
            item = Item.create(image: image["secure_url"], child_id: params["child_id"])
            render json: item
        end
        if params[:file]
            file = Cloudinary::Uploader.upload(params[:file])
            item = Item.create(file: file["secure_url"], child_id: params["child_id"])
            render json: item
        end
        
        
    end

    def destroy
        Item.find(params[:id]).destroy
      end

end