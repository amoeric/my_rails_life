class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :price
      t.text :description
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
