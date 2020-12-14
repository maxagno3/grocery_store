require_relative "product_table"

class Bill
  def initialize(order)
    @order = order
    @products = ProductTable.new.product_table
  end

  def show_bill
    total_price = 0
    saved = 0
    puts "Items\t Quantity\t Price"
    puts "______________________________"
    @order.each do |item, quantity|
      puts "#{item.capitalize}\t  #{quantity}\t \t#{calculate_discount(item, quantity)}"
      total_price += calculate_discount(item, quantity)
      saved += (@products[item]["unit_price"] * quantity) - calculate_discount(item, quantity)
    end
    puts "Total Price: #{total_price.round(2)}"
    puts "You saved #{saved.round(2)} today"
  end

  def calculate_bill
    puts "Calculating the bill. Please wait..."
    total = 0
    @order.each do |key, value|
      calculate_discount(key, value)
    end
    puts total.round(2)
  end

  def calculate_discount(item, quantity)
    case item
    when "milk"
      if quantity > 1
        left_quantity = quantity % 2
        final_price = (@products[item]["sale_quantity"] * @products[item]["sale_price"]) + (left_quantity * @products[item]["unit_price"])
      else
        final_price = quantity * @products[item]["unit_price"]
      end
    when "bread"
      if quantity > 1
        left_quantity = quantity % 3
        final_price = (@products[item]["sale_quantity"] * @products[item]["sale_price"]) + (left_quantity * @products[item]["unit_price"])
      else
        final_price = quantity * @products[item]["unit_price"]
      end
    else
      final_price = quantity * @products[item]["unit_price"]
    end
  end
end
