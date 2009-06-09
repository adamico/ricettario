class CreateIngredientiRicette < ActiveRecord::Migration
  def self.up
    create_table (:ingredienti_ricette, :id => false) do |t|
      t.references :ingrediente
      t.references :ricetta
    end
  end

  def self.down
    drop_table :ingredienti_ricette
  end
end
