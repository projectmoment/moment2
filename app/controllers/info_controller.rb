class InfoController < ApplicationController
    def new
        @categories = Category.all
        @info = Info.find_by(user_id: params[:user_id])
        
    end
    
    def create
        @info = Info.new
        @info.image_url = params[:image_url]
        @info.introduction = params[:introduction]
        @info.user_id = current_user.id
        @info.save
        @userid = current_user.id
        redirect_to "/info/new/#{@userid}"
    end
    def edit
        @info = Info.find(params[:id])
        
    end
    
    def update
        @info = Info.find(params[:id])
        @info.image_url = params[:image_url]
        @info.introduction = params[:introduction]
        @info.user_id = current_user.id
        @info.save
        @userid = current_user.id
        redirect_to "/profile/mypage/#{@userid}"
    end
    
    def follow
        @category = Category.find(params[:user_id])
        current_user.follow(@user)
        respond_to :js
    end
    
    def unfollow
        @user = User.find(params[:user_id])
        current_user.stop_following(@user)
        respond_to :js
    end
    
end
