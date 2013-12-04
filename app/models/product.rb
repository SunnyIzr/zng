class Product < ActiveRecord::Base
  validates_presence_of :sku
  validates_presence_of :title
  validates_presence_of :image
  belongs_to :color
  belongs_to :pattern
end
