class AddEquipmentToUsers < ActiveRecord::Migration[6.0]
  def change
    enable_extension 'hstore'
    add_column :users, :equipment, :hstore, null: false, default: {}
  end
end
