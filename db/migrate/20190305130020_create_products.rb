class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.text :describe
      t.float :price
      t.string :image
      t.float :avg_rate

      t.timestamps
    end
  end
end
