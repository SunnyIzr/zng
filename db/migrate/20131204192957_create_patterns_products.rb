class CreatePatternsProducts < ActiveRecord::Migration
  def change
    create_table :patterns_products do |t|
      t.belongs_to :pattern
      t.belongs_to :product
    end
  end
end
