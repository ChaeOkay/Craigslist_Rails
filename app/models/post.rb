class Post < ActiveRecord::Base
  validates_presence_of :title, :description, :email, :secure_email, :rent, :area, :key, :category
  validates_uniqueness_of :title, :description
  attr_accessible :title, :description, :email, :secure_email, :rent, :area, :key, :category

  belongs_to :category
end
