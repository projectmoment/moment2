class Category < ActiveRecord::Base
    
    require 'carrierwave/orm/activerecord'
    mount_uploader :image_url, ImageUploader
    
    has_many :profiles
    acts_as_followable
end