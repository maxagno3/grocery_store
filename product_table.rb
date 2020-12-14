class ProductTable
  attr_reader :product_table

  def initialize
    @product_table = {
      "milk" => {
        "unit_price" => 3.97,
        "sale_quantity" => 2,
        "sale_price" => 2.5,
      },
      "bread" => {
        "unit_price" => 2.17,
        "sale_quantity" => 3,
        "sale_price" => 2.00,
      },
      "banana" => {
        "unit_price" => 0.99,
        "sale_quantity" => 0,
        "sale_price" => 0,
      },
      "apple" => {
        "unit_price" => 0.89,
        "sale_quantity" => 0,
        "sale_price" => 0,
      },
    }
  end
end
