class Pattern < ActiveRecord::Base
  validates_presence_of :pattern
  has_many :products
end
