class Color < ActiveRecord::Base
  validates_presence_of :color
  validates_uniqueness_of :color
  has_many :products
end
