class PlaysController < ApplicationController
    # def update
    #     @profile = Profile.find_by(user_id: self.id)
    #     @profile.introduction = params[:input_introduction]

    # end   
    
    def create
         @category_id.each do |i| 
            @play = Play.new
            @play.user_id = params[:user_id]
            @play.category_id = i
            @play.save
         end 

        @userid = current_user.id
        redirect_to "/profile/mypage/#{@userid}"
    end

end
