class Photo < ActiveRecord::Base
  attr_accessor :place_id, :caption, :picture
  belongs_to :place
  belongs_to :user
  mount_uploader :picture, PictureUploader

end

 

