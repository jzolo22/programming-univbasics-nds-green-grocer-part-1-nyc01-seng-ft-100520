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
  new_cart = cart.uniq { |item_hash| item_hash[:item]}
  new_cart.map do |new_item_hash|
    new_item_hash[:count] = 1
  end
  item_count = []
  cart.each do |item_hash|
    item_count << item_hash[:item]
end
counts = Hash.new(0)

item_count.each do |name|
    counts[name] += 1
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


#count any duplicates


  