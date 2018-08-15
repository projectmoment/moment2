class PlaysController < ApplicationController
    # def update
    #     @profile = Profile.find_by(user_id: self.id)
    #     @profile.introduction = params[:input_introduction]

    # end   
    
    def create
        @play = Play.new
        @play.user_id = params[:user_id]
        @play.category_id = params[:category_id]
        @play.save
        @userid = current_user.id
        redirect_to "/profile/mypage/#{@userid}"
    end

end
