class InfoController < ApplicationController
    def new
        @categories = Category.all
        
        
    end
    
    def create
        @info = Info.new
        @info.image_url = params[:image_url]
        @info.introduction = params[:introduction]
        @info.user_id = current_user.id
        @info.save
        @userid = current_user.id
        redirect_to "/profile/mypage/#{@userid}"
    end
    def edit
        @info = Info.find(params[:id])
        @categories = Category.all
        
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
        @category = Category.find(params[:category_id])
        current_user.follow(@category)
        respond_to :js
    end
    
    def unfollow
        @category = Category.find(params[:category_id])
        current_user.stop_following(@category)
        respond_to :js
    end
    
end
