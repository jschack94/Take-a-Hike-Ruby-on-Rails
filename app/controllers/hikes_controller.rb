class HikesController < ApplicationController
    before_action :require_login, except: [:index]
    
    def index
      @user = User.find_by(id: params[:user_id])
      if @user
        @hikes = @user.hikes.all
      else
        @hikes = Hike.all
      end
    end
  
    def recent
      @hikes = Hike.by_recently_added
    end
  
    def new
      @hike = Hike.new
    end
  
    def create
      @user = current_user
      @hike = current_user.hikes.build(hike_params)
      if @hike.save
        redirect_to user_hikes_path(current_user), success: "Hike succesfully saved."
      else
        render 'new'
      end
    end
  
    def show
      @user = current_user
      @hike ||= Hike.find(params[:id])
      @comment = Comment.new(:hike => @hike)
    end
  
    def edit
      @hike = Hike.find(params[:id])
      if current_user.id == @hike.user_id
      else
        redirect_to hike_path(@hike), warning: "Hike can only be edited by the user that created it."
      end
    end
  
    def update
      @hike = Hike.find(params[:id])
      if current_user.id == @hike.user_id
        @hike.update(hike_params)
        redirect_to hike_path(@hike), success: "Hike has been updated."
      else
        redirect_to edit_hike_path(@hike), warning: "Changes failed to save, please try again."
      end
    end
  
    def destroy
      @hike = Hike.find(params[:id])
      if current_user.id == @hike.user_id
        @hike.destroy
        redirect_to user_hikes_path(current_user), info: "Hike has been deleted."
      else 
        redirect_to hike_path(@hike), warning: "You can only delete hikes that you've created."
      end
    end
  
    private
  
    def hike_params
      params.require(:hike).permit(:name, :state, :description, :user_id, :completed)
    end
  end
  