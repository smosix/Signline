class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :user_id

      t.string   :name
      t.string   :address_one
      t.string   :address_two
      t.string   :city
      t.string   :county
      t.string   :postcode
      t.string   :country, default: 'UK'

      t.timestamps null: false
    end
  end
end
