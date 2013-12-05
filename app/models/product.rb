class Product < ActiveRecord::Base
  validates_presence_of :sku
  validates_presence_of :title
  validates_presence_of :image
  validates_presence_of :color_id
  validates_presence_of :pattern_id
  validates_uniqueness_of :sku
  belongs_to :color
  belongs_to :pattern

  def self.filter_products(colors,patterns)
    filter_color(colors) & filter_pattern(patterns)
  end

  def self.filter_color(colors)
    return Product.all if colors == nil
    products = []
    colors.each do |color|
      products << Product.where("color_id='#{Color.find_by(color: color).id}'")
    end
    products.flatten
  end

  def self.filter_pattern(patterns)
    return Product.all if patterns == nil
    products = []
    patterns.each do |pattern|
      products << Product.where("pattern_id='#{Pattern.find_by(pattern: pattern).id}'")
    end
    products.flatten
  end

end
