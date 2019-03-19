class Product < ApplicationRecord
  belongs_to :category


  def disminuir_cantidad(candidad_a_disminuir)
    if (self.cantidad > 0)
      self.cantidad = self.cantidad - candidad_a_disminuir
      return true
    else
      return false
    end
  end



end
