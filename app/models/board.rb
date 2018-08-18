class Board < ActiveRecord::Base

    require 'carrierwave/orm/activerecord'
    mount_uploader :image_url, ImageUploader
    
    # 준홍이의 취중코오딩
    has_and_belongs_to_many :hashtags
    accepts_nested_attributes_for :hashtags

    belongs_to :profile
    belongs_to :user
    has_many :likes
    has_many :liked_users, through: :likes, source: :user
    has_many :comments
    
    # 사람 태그하기. ex) @철수
    has_many :tags
    
    after_create do
    usertags = self.content.scan(/@\w+/)
    usertags.uniq.map do |usertag|
      if User.find_by(name: usertag.delete('@')).present?
        user = User.find_by(name: usertag.delete('@'))
        tag = Tag.find_by(name: usertag.delete('@'),
                          user_id: user.id,
                          comment_id: self.id)
        if tag.nil?
          Tag.create(name: usertag.delete('@'),
                     user_id: user.id,
                     comment_id: self.id)
        else
          tag.update(name: usertag.delete('@'),
                     user_id: user.id,
                     comment_id: self.id)
        end
      end
    end
  end
  
    # # 해시태그를 고쳐보자! 
    # after_create do
    #   hashtags = self.content.scan(/#\w+/) # '#'로 시작하는 문자열 스캔
    #   hashtags.uniq.map do |hashtag|       
    #     if Category.find_by(name: hashtag.delete('#')).present?
    #       category = Category.find_by(name: hashtag.delete('#'))
    #       tag = Hashtag.find_by(title: hashtag.delete('#') )
    #       if tag.nil?
    #         Hashtag.create(title: hashtag.delete('#') )
    #       else
    #         tag.update(title: hashtag.delete('#') )
    #       end
    #     end
    #   end
    # end
end
