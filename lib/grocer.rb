require 'pry'

def find_item_by_name_in_collection(name, collection)
 collection.each do |item_hash|
   if item_hash[:item] == name
    return item_hash     
   end
 end
 nil
end


def consolidate_cart(cart)
  new_cart = []
  cart.each do |item_hash|
      new_cart << item_hash
  end
  new_cart.each do |new_item_hash|
    new_item_hash[:count] = new_item_hash[:item].count
  end

end

new_cart.each do |item_hash|
  counts.each do |item, amount|
  if item_hash[:item] == item 
    item_hash[:count] = amount
  end
end
end
# binding.pry
  new_cart
end

