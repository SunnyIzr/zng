require 'spec_helper'

describe Color do

it {should validate_presence_of (:color)}
it {should validate_uniqueness_of (:color)}
it {should have_many (:products)}
end
