class Favorite < ActiveRecord::Base
  belongs_to :apartment
  belongs_to :favorited_by, :class_name => "User", :foreign_key => "favorited_by_id"
  validates :apartment_id, :presence => true
  validates :favorited_by_id, :presence => true

end
