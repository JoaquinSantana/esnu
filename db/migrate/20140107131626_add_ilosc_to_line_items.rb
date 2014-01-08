class AddIloscToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :ilosc, :integer, default: 1
  end
end
