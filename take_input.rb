require_relative "bill"
require_relative "product_table"

class Cart
  attr_reader :order

  def initialize
    @order = Hash.new(0)
    @products = ProductTable.new.product_table
  end

  def take_input
    puts "Please enter all the items purchased separated by a comma"

    user_input = gets.chomp.downcase.gsub(/\s+/, "").split(",")

    if user_input.length < 1
      puts "Invalid order! Try again."
      take_input
    else
      user_input.each { |order| add_item(order) }

      puts "Order for the following has been confirmed. Thank you.\n\n"

      return view_order
    end
  end

  def add_item(item)
    if !@products[item]
      puts "#{item} currently unavailable."
    elsif @order[item].nil?
      @order[item] = 1
    else
      @order[item] += 1
    end
  end

  def view_order
    puts @order
  end
end

cart_items = Cart.new
cart_items.take_input
bill = Bill.new(cart_items.order)
bill.calculate_bill
bill.show_bill
