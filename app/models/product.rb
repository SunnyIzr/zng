class Product < ActiveRecord::Base
  validates_presence_of :sku
  validates_presence_of :title
  validates_presence_of :image
  validates_presence_of :color_id
  validates_presence_of :pattern_id
  validates_uniqueness_of :sku
  belongs_to :color
  belongs_to :pattern
end
