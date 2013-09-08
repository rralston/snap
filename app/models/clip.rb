class Clip < ActiveRecord::Base
  attr_accessible :date_string, :location, :speed, :time, :video_url, :video_attributes
  has_one :video, :as => :videoable, :dependent => :destroy

  accepts_nested_attributes_for :video, :allow_destroy => true  
end
