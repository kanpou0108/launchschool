require 'pry'
# Question 10
# For the filtered totals, one of the team suggests the following solution:

# all_orders =[
#   {customer_id: 12, customer_name: 'Emma Lopez', total_order_value: 483.48},
#   {customer_id: 32, customer_name: 'Michael Richards', total_order_value: 205.65}
# ]

# fulfilled_orders =[
#   {customer_id: 12, customer_name: 'Emma Lopez', order_value: 425.48},
#   {customer_id: 32, customer_name: 'Michael Richards', order_value: 120.00}
# ]

customer_orders = [
  {
    customer_id: 12,
    customer_name: 'Emma Lopez',
    orders: [
      { order_fulfilled: true, order_value: 135.99 },
      { order_fulfilled: true, order_value: 289.49 },
      { order_fulfilled: false, order_value: 58.00 }
    ]
  },
  {
    customer_id: 32,
    customer_name: 'Michael Richards',
    orders: [
      { order_fulfilled: true, order_value: 120.00 },
      { order_fulfilled: false, order_value: 85.65 }
    ]
  }
]

fulfilled_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|
  order_value = 0
  data[:orders].each do |order|
    if order[:order_fulfilled]
      order_value += order[:order_value]
    else
      next
    end
  end
  
  fulfilled_orders[index][:total_order_value] = order_value
end

p fulfilled_orders
# => [{:customer_id=>12, :customer_name=>"Emma Lopez", :total_order_value=>425.48}, {:customer_id=>32, :customer_name=>"Michael Richards", :total_order_value=>120.0}]