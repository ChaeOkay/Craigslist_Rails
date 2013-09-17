class Category < ActiveRecord::Base
  validates :description, presence: true, uniqueness: true
  attr_accessible :description
end
