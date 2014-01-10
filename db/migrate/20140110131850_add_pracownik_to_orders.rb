class AddPracownikToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :pracownik, :string
    add_index :orders, :pracownik
  end
end
