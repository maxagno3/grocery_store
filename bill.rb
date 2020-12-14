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
          calculate_discount(order)
        end
      end
    end
    puts total.round(2)
  end

  def calculate_discount(item)
    discount = 0
    total = 0
    case item
    when "milk"
      if @order[item].odd? && @order[item] > 2
        discount += (@products[item]["sale_price"] * 2) + @products[item]["unit_price"]
        puts "#{discount} is the discount but even odd"
      elsif @order[item].even? && @order[item] > 2
        discount += (@products[item]["sale_price"] * @order[item])
        puts "#{discount} is the discount"
      else
        total += (@products[item]["unit_price"] * @order[item])
        puts "#{total} is the total amount of milk"
      end
    when "bread"
      if @order[item].odd? && @order[item] > 2
        discount += (@products[item]["sale_price"] * 2) + @products[item]["unit_price"]
        puts "#{discount} is the odd discount"
      else
        total += (@products[item]["unit_price"] * @order[item])
        puts "#{total} is the total amount of bread"
      end
    else
      total += (@products[item]["unit_price"] * @order[item])
      puts "#{total} is the total amount"
    end
  end
end
