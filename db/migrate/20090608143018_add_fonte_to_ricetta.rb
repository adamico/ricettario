class AddFonteToRicetta < ActiveRecord::Migration
  def self.up
    add_column :ricette, :fonte, :string
  end

  def self.down
    remove_column :ricette, :fonte
  end
end
