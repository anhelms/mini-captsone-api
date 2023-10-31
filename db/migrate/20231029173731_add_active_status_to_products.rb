class AddActiveStatusToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :active_status, :boolean
  end
end
