class Cart
  def initialize
    @order = Hash.new(0)
  end

  def take_input
    puts "Please enter all the items purchased separated by a comma"

    user_input = gets.chomp.downcase.gsub(/\s+/, "").split(",")

    if user_input.length < 1
      puts "Invalid order! Try again."
      take_input
    else
      user_input.each { |order| @order[order] += 1 }
      
      puts "Order for the following has been confirmed. Thank you.\n\n"

      view_order
    end
  end

  def view_order
    puts @order
  end
end

cart_items = Cart.new
cart_items.take_input
