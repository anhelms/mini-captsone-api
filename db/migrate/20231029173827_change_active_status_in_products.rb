class ChangeActiveStatusInProducts < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :active_status, :boolean, default: true
  end
end
