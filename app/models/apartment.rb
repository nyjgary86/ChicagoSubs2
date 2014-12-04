class Apartment < ActiveRecord::Base
  belongs_to :user
  validates :apttype, :presence => true
  validates :size, :presence => true
  validates :price, :presence => true
  validates :startdate, :presence => true
  validates :enddate, :presence => true
  validates :neighborhood, :presence => true
  validates :streetadd, :presence => true
  validates :unit, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :zip, :presence => true
  validates :headline, :presence => true
  validates :description, :presence => true
  validates :pictureurl, :presence => true
  validates :user_id, :presence => true
end
