class Category < ActiveRecord::Base
    
    require 'carrierwave/orm/activerecord'
    mount_uploader :image_url, ImageUploader
    
    has_many :profiles
end
