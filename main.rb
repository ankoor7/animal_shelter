require 'pry'

require_relative 'entity'
require_relative 'client'
require_relative 'animal'
require_relative 'shelter'

def input
  gets.chomp
end

kid1 = Entity.new name: 'Billy', gender: :male, age: 10
kid2 = Entity.new name: 'Bob', gender: :male, age: 11

pet1 = Animal.new age: 3, name: 'Cameron', breed: "Border Collie", toys: ['squeaky toy', 'stuffed elepant'], gender: :male
pet2 = Animal.new age: 3, name: 'Nick', breed: "Poodle", toys: ['squeaky toy'], gender: :neutral
pet3 = Animal.new age: 3, name: 'Nigel', breed: "Border Collie", toys: ['stuffed elepant', 'lazy carrot', 'dead squirrel'], gender: :male
pet4 = Animal.new age: 3, name: 'Beatrice', breed: "Poodle", toys: ['squeaky toy', 'smelly rat'], gender: :female

A=Client.new age: 25, name: "Algernon", gender: :male, kids: {kid1.name => kid1, kid2.name => kid2}, pets: {}
B = Client.new age: 30, name: 'Boris', gender: :male, kids: {}, pets: {pet1.name => pet1, pet2.name => pet2}

st_mungos = Shelter.new name: "St Mungo's Animal Shelter", clients: {}, animals: {pet3.name => pet3, pet4.name => pet4}

[A,B].each { |person|
  st_mungos.clients[person.name] = person
}

#binding.pry

# Menu
def menu
  puts "Please choose from the following options:"
  puts "1) See the animals you can adopt. 2) List the current clients. 3) Adopt an animal 4) Give-up on an animal 5) Exit"
  choice = gets.chomp.to_i
end


# Work flow
puts "Welcome to #{st_mungos.name}."

choice = menu

while choice != 5

  case choice
  when 1
    st_mungos.list_animals
  when 2
    st_mungos.list_clients
  when 3
     st_mungos.adopt
  when 4
    st_mungos.abandon
  end

  gets

  choice = menu
end
