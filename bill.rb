require_relative "product_table"

class Bill
  def initialize(order)
    @order = order
    @products = ProductTable.new.product_table
  end

  def show_bill
  end

  def calculate_bill
    puts "Calculating the bill. Please wait..."

    total = 0
    @products.keys.map do |order_key|
      @order.keys.inject(0) do |sum, order|
        if order_key == order
          total += (@products[order]["unit_price"] * @order[order])
        end
      end
    end
    puts total
  end
end
