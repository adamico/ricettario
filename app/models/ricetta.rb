# Current Schema
#create_table "ricette", :force => true do |t|
#  t.string   "titolo"
#  t.text     "istruzioni"
#  t.datetime "created_at"
#  t.datetime "updated_at"
#  t.integer  "categoria_id"
#  t.string   "fonte"
#end

class Ricetta < ActiveRecord::Base
  validates_presence_of :titolo, :istruzioni
  belongs_to :categoria
  has_and_belongs_to_many :ingredienti

  accepts_nested_attributes_for :ingredienti, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs['nome'].blank? } 
end
