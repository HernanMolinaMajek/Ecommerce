class Sale < ApplicationRecord
    has_many :lineItems
    before_save :finalizar_venta

    def agregar_lineItem(line_item)
      lineItems.push(line_item)
    end

    def calcular_total
      total = 0
      self.lineItems.map do |lv|
        total = total + lv.calcular_sub_total
      end
      return total
    end

    def finalizar_venta
      self.total = calcular_total
      self.lineItems.map do |lv|
       lv.product.disminuir_cantidad(lv.cantidad)
     end
    end

#nested atributes

end
