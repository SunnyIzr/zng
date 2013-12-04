class AddPatternRefToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :pattern, index: true
  end
end
