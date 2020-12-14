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
      user_input.each { |order| add_item(order) }

      puts "Order for the following has been confirmed. Thank you.\n\n"

      view_order
    end
  end

  def add_item(item)
    case item
    when "milk"
      if @order["milk"].nil?
        @order["milk"] = 1
      else
        @order["milk"] += 1
      end
    when "bread"
      if @order["bread"].nil?
        @order["bread"] = 1
      else
        @order["bread"] += 1
      end
    when "banana"
      if @order["banana"].nil?
        @order["banana"] = 1
      else
        @order["banana"] += 1
      end
    when "apple"
      if @order["apple"].nil?
        @order["apple"] = 1
      else
        @order["apple"] += 1
      end
    else
      puts "#{item} is currently unavailable. We will make it available soon."
    end
  end

  def view_order
    puts @order
  end
end

cart_items = Cart.new
cart_items.take_input
