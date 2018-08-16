class Category < ActiveRecord::Base
    has_many :profiles
    acts_as_followable
end