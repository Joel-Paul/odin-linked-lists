require_relative('lib/linked_list')

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

puts list.size
puts list
# => ( dog ) -> ( cat ) -> ( parrot ) -> ( hamster ) -> ( snake ) -> ( turtle ) -> nil

list.insert_at('mouse', 6)
puts list.size
puts list

puts list.remove_at(4)
puts list.size
puts list

# puts
# p list
