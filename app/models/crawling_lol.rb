class CrawlingLol < ActiveRecord::Base
     validates_uniqueness_of :info
end
