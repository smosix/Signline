class AddPaypalThingsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :ip, :string
    add_column :orders, :express_token, :string
    add_column :orders, :express_payer_id, :string
  end
end
