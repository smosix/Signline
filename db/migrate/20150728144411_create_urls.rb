class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :url
      t.integer :site_id

      t.timestamps null: false
    end
  end
end
