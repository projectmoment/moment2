class InfoController < ApplicationController
    def new
        @info = Info.new
        @categories = Category.all
        
    end
    
    def create
        @info = Info.new
        @play = Play.new
        
        
        @info.user_id = params[:user_id]
        @info.introduction = params[:introduction]
        
        @info.save
        @userid = current_user.id
        redirect_to "/profile/mypage/#{@userid}"
    
    end
    def edit
        @info = Info.find(params[:id])
        
    end
    
    def update
        @info = Info.find(params[:id])
        
        @info.save
        @userid = current_user.id
        redirect_to "/profile/mypage/#{@userid}"
    end
    
    
end
