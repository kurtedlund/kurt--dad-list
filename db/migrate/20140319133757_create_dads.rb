class CreateDads < ActiveRecord::Migration
  def change
    create_table :dads do |t|
      t.string :title
      t.string :image_url
      t.text :description
      t.string :tags

      t.timestamps
    end
  end
end
