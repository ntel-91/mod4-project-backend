class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :img_url
      t.integer :price
      t.string :description
      t.integer :hamster_id
      t.integer :sub_category_id

      t.timestamps
    end
  end
end
