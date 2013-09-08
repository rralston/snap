class Clip < ActiveRecord::Base
  attr_accessible :date_string, :location, :speed, :time, :video_url
end
