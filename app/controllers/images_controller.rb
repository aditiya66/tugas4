        class ImagesController < ApplicationController
        
        
        # before_action :check_current_user, only: [:new, :create, :edit, :update, :destroy]
        
        def index
        @images= Image.all
        end
        def create
        @image = Image.create(image_params)
        if@image.save
        
        flash[:notice] = "Success Add Records"
        
        redirect_to action: 'index'
        
        else
        flash[:error] = "data not valid"
        
        render 'new'
        
        end
        
        end
        
        def new
        @image = Image.new
        end
        
        def edit
        @image=Image.find_by_id(params[:id])
        
        end
        
        def show
        @image=Image.find_by_id(params[:id])
        end
        
        def destroy
        
        @image =Image.find_by_id(params[:id])
        if @image.destroy
        flash[:notice] = "Succer delete "
        
        redirect_to action: 'index'
        else
        flash[:notice] = "fails delete a records "
        redirect_to action: 'index'
        
        end
        
        end
        def update
        @image=Image.find_by_id(params[:id])
        if @image.update(image_params)
        flash[:notice] = "Succes"
        redirect_to action: 'index'
        else
        flash[:notice] = "data not valid"
        render 'edit'
        
        
        end
        end
        
        private
        def image_params
        params.require(:image).permit(:avatar,:title,:descrip)
        end
        end
