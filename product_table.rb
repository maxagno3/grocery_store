class ProductTable
    attr_reader :product_table
    
    def initialize
        product_table = [
            {
            item_name: "Milk",
             unit_price: 3.97,
             eligible_for_sale: 2,
             sale_price: 2.06
            },
            {
             item_name: "Bread",
             unit_price: 2.17,
             eligible_for_sale: 3,
             sale_price: 3.83
            },
            {
             item_name: "Banana",
             unit_price: 3.97,
             eligible_for_sale: nil,
             sale_price: nil
            },
            {
             item_name: "Apple",
             unit_price: 0.89,
             eligible_for_sale: nil,
             sale_price: nil
            }
        ]
    end
end