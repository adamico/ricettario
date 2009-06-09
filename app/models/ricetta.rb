class Ricetta < ActiveRecord::Base
  validates_presence_of :titolo, :istruzioni
  belongs_to :categoria
  has_and_belongs_to_many :ingredienti

  accepts_nested_attributes_for :ingredienti, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs['nome'].blank? } 
end
