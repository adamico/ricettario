class CreateRicette < ActiveRecord::Migration
  def self.up
    create_table :ricette do |t|
      t.string :titolo
      t.text :istruzioni

      t.timestamps
    end
  end

  def self.down
    drop_table :ricette
  end
end
