class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :obszar

      t.timestamps
    end
  end
end
