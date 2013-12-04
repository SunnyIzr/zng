require 'spec_helper'

describe Pattern do
  it {should validate_presence_of(:pattern)}
  it {should validate_uniqueness_of(:pattern)}
  it {should have_many (:products)}
end
