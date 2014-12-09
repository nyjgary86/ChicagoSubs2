class Neighborhood < ActiveRecord::Base
  has_many :apartments
  validates :name, :presence => true, :uniqueness => true
  validates :district, :presence => true
end
