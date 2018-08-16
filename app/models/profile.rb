class Profile < ActiveRecord::Base
    belongs_to :category
    belongs_to :user
    has_many :boards , dependent: :destroy
end