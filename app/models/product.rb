class Product < ActiveRecord::Base
  has_and_belongs_to_many :colors
  has_and_belongs_to_many :patterns
end
