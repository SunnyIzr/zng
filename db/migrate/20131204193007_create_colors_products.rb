class CreateColorsProducts < ActiveRecord::Migration
  def change
    create_table :colors_products do |t|
      t.belongs_to :color
      t.belongs_to :product
    end
  end
end
