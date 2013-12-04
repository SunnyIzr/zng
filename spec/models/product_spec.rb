require 'spec_helper'

describe Product do

  it {should validate_presence_of (:sku)}
  it {should validate_presence_of (:title)}
  it {should validate_presence_of (:image)}
  it {should validate_presence_of (:color_id)}
  it {should validate_presence_of (:pattern_id)}
  it {should validate_uniqueness_of(:sku)}
  it {should belong_to (:color)}
  it {should belong_to (:pattern)}
end
