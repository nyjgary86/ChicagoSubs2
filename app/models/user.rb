class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :apartments
  has_many :favorites, :foreign_key => "favorited_by_id", :class_name => "Favorite"
  belongs_to :university

  validates :email, :presence => true, :uniqueness => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :university_id, :presence => true
  validates :profile_pic, :presence => true
  validates :introduction, :presence => true

end
