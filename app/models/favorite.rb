class Favorite < ActiveRecord::Base
  belongs_to :apartment
  belongs_to :favorited_by, :class_name => "User", :foreign_key => "favorited_by_id"
  validates :apartment, :presence => true
  validates :favorited_by, :presence => true

end
