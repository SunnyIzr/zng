class Color < ActiveRecord::Base
  validates_presence_of :color
  has_many :products
end
