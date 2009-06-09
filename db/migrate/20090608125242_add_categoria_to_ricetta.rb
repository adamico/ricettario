class AddCategoriaToRicetta < ActiveRecord::Migration
  def self.up
    change_table :ricette do |t|
      t.references(:categoria)
    end
  end

  def self.down
    change_table :ricette do |t|
      t.remove_references(:categoria)
    end
  end
end
