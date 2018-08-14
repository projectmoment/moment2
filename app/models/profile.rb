class Profile < ActiveRecord::Base
    belongs_to :category
    belongs_to :user
    acts_as_followable
    acts_as_follower
end