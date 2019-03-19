class LineItem < ApplicationRecord
  belongs_to :sale
  belongs_to :product


  def calcular_sub_total
      self.sub_total = product.precio * self.cantidad
  end

end
