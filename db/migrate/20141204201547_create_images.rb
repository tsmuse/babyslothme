class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.string :image_url
      t.string :image_source

      t.timestamps
    end
  end
end
