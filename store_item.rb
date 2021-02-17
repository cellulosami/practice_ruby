# bologna_stick = {:name => "Bologna stick", :smelliness => "so-so", :color => "tangerine", :price => "one human soul"}
# duck_egg = {name: "Duck egg", smelliness: "febreeze", color: "off-white", :price => "two teaspoons of olive oil"}
# cottage_cheese = {name: "Cottage cheese", smelliness: "rank", color: "gross", :price => "negative three dollars"}

# @items=[bologna_stick,duck_egg, cottage_cheese]
# done_with_session="no"

class Item

  attr_reader :name

  attr_reader :smelliness

  attr_reader :color

  attr_accessor :price

  def initialize (input_options)
    @name=input_options[:name]
    @smelliness=input_options[:smelliness]
    @color=input_options[:color]
    @price=input_options[:price]
  end

end

item1 = Item.new({
  name: "Bologna stick", 
  smelliness: "so-so", 
  color: "tangerine", 
  price: "one human soul"
})
p item1
item2 = Item.new({
  name: "Duck egg", 
  smelliness:"febreeze", 
  color: "off-white", 
  price: "two teaspoons of olive oil"
})
p item2
item3 = Item.new({
  name: "Cottage cheese", 
  smelliness:"rank", 
  color: "gross", 
  price: "negative three rupees"
})
p item3

item1.price = "free"
p item1.name
p item1.smelliness
p item1.color
p item1.price
p item2.name
p item2.smelliness
p item2.color
p item2.price
p item3.name
p item3.smelliness
p item3.color
p item3.price

# def create
#   new_item={}
#   puts "Input new item name:"
#   new_item[:name]=gets.chomp
#   puts "Smelliness:"
#   new_item[:smelliness]=gets.chomp
#   puts "Color:"
#   new_item[:color]=gets.chomp
#   puts "Price:"
#   new_item[:price]=gets.chomp
#   puts "#{new_item} added to items."
#   @items<<new_item
# end

# def read
#   puts "Input ID of item to be read:"
#   user_input=(gets.chomp.to_i-1)
#   if user_input >= 0
#     p @items[user_input]
#   end
# end

# def update
#   puts "Input ID of item to update:"
#   id_number=gets.chomp.to_i-1
#   puts "Input trait to update (name, smelliness, color, price):"
#   trait=gets.chomp.downcase.to_sym
#   puts "Input updated value:"
#   @items[id_number][trait]=gets.chomp
#   puts "Updated item number #{id_number+1}: #{@items[id_number]}"
# end

# def delete
#   puts "Input ID of item to delete:"
#   id_number=gets.chomp.to_i-1
#   p id_number
#   @items.delete_at(id_number)
# end

# while done_with_session=="no"
#   puts "Please input a command: [C]reate, [R]ead, [U]pdate, [D]elete, [Q]uit"
#   user_command=gets.chomp
#   user_command=user_command[0]
#   if user_command.upcase=="C"
#     create
#   elsif user_command.upcase=="R"
#     read
#   elsif user_command.upcase=="U"
#     update
#   elsif user_command.upcase=="D"
#     delete
#     p @items
#   elsif user_command.upcase=="Q"
#     p "placeholder"
#     done_with_session="yes"
#     break
#   else
#     puts "Invalid command. Please try again."
#   end
#   puts ""
# end

# puts "goodbye"