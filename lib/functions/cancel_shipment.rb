require_relative '../config/database'

FunctionsFramework.http "my_http_function" do |request|
  # Return an HTTP response
  puts "="*100
  puts "Calling the Active Record Data Record"
  puts "="*100

  class OrderLineItem < ActiveRecord::Base
    
  end

  orders_count = OrderLineItem.count
  puts "Total Count: #{orders_count}"
end