class Info < ActiveRecord::Base
  
  require 'carrierwave/orm/activerecord'
  mount_uploader :image_url, ImageUploader
  
  belongs_to :user
  belongs_to :play
  belongs_to :relationship
end
