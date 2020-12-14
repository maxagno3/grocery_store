class ProductTable
  attr_reader :product_table

  def initialize
    @product_table = {
      "milk" => {
        "unit_price" => 3.97,
        "eligible_for_sale" => 2,
        "sale_price" => 2.06,
      },
      "bread" => {
        "unit_price" => 2.17,
        "eligible_for_sale" => 3,
        "sale_price" => 3.83,
      },
      "banana" => {
        "unit_price" => 3.97,
        "eligible_for_sale" => false,
        "sale_price" => 0,
      },
      "apple" => {
        "unit_price" => 0.89,
        "eligible_for_sale" => false,
        "sale_price" => 0,
      },
    }
  end
end
