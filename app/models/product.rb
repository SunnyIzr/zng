class Product < ActiveRecord::Base
  belongs_to :color
  belongs_to :pattern
end
