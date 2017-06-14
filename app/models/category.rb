class Category < ActiveRecord::Base
 has_many :subcategories
 mount_uploader :image, ImageUploader
 belongs_to :user
end
