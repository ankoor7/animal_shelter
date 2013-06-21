class Shelter
  attr_accessor :clients, :animals, :name

def initialize(options={})
  @name = options[:name]
  @clients = options[:clients]
  @animals = options[:animals]
end

def input
  gets.chomp
end

  def list_animals
    puts "Current residents of St Mungo's Animal Shelter are,"
    @animals.each { |k,v|
    puts "#{k}, a #{@animals[k].breed} who likes #{@animals[k].toys.join(', ')}."
  }
  end

  def list_clients
    puts "Current clients of St Mungo's Animal Shelter are,"
    @clients.each { |k,v|
 #   puts v
    puts "#{k}, a #{@clients[k].age} year old who owns #{ @clients[k].pets.keys.empty? ? 'no pets' : @clients[k].pets.keys.join(', ') }"
   }
  end

  def adopt
    list_clients
    puts "Which client are you? #{@clients.keys.join(', ')}?"
    angel = input
    puts "Thank you for choosing to adopt a pet!"
    list_animals
    puts "Which animal do you want to adopt?"
    adopt = input
    @clients[angel].pets.merge!(animals.select {|k,v| k == adopt})
    @animals.delete(adopt) { |el| "Please try again, #{el} was not found" }
  end

 def abandon
     puts "Thank you for choosing to abandon your pet to a safe home. "
     puts "Which client are you? #{@clients.keys.join(', ')}?"
     arse = input
     puts "You have the following pets:"
     @clients[arse].list_pets
     puts "Which animal do you loathe?"
     #binding.pry
     name = input
 #    binding.pry
     @animals.merge!(clients[arse].pets.select {|k,v| k == name} )
     @clients[arse].pets.delete(name) { |el| "Please try again, #{el} was not found" }
end

end
