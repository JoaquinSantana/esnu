class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :nazwa
      t.text :opis
      t.integer :numer

      t.timestamps
    end
  end
end
