class CreateIngredienti < ActiveRecord::Migration
  def self.up
    create_table :ingredienti do |t|
      t.string :nome
      t.string :tipo

      t.timestamps
    end
  end

  def self.down
    drop_table :ingredienti
  end
end
