class Ingrediente < ActiveRecord::Base
  has_and_belongs_to_many :ricette

  #validates_presence_of :nome, :message => "non puo' essere vuoto"
  
  attr_accessor :raise_exception
  
  after_save :raise_exception_if_needed
  def raise_exception_if_needed
    if @raise_exception.to_i == 1
      raise 'Oh no!'
    end
  end
end
