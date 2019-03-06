class CreateSuggests < ActiveRecord::Migration[5.2]
  def change
    create_table :suggests do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :describe
      t.float :price

      t.timestamps
    end
  end
end
