class Post < ActiveRecord::Base
  validates_presence_of :title, :description, :email, :secure_email, :rent, :area, :key
  validates_uniqueness_of :title, :description
  attr_accessible :title, :description, :email, :secure_email, :rent, :area, :key
end
