class Pattern < ActiveRecord::Base
  validates_presence_of :pattern
  validates_uniqueness_of :pattern
  has_many :products
end
