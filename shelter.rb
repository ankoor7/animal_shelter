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
    puts v
  }
  end

  def list_clients
    puts "Current clients of St Mungo's Animal Shelter are,"
    @clients.each { |k,v|
    puts v
   }
  end

  def adopt
    puts "Thank you for choosing to adopt a pet!"
    list_animals
    puts "Which animal do you want to adopt?"
    adopt = input
    @animals.delete(adopt) { |el| "Please try again, #{el} was not found" }
  end

 def abandon
     puts "Thank you for choosing to abandon your pet to a safe home. "
     puts "Which client are you? #{@clients.keys.join(', ')}?"
     arse = input
     puts "You have the following pets:"
     @clients[arse].pets.keys.join(', ')
     puts "Which animal do you loathe?"
     binding.pry

     name = input
     @animals << clients[arse].pets[name].clone
     @clients[arse].pets.delete[name]
    #st_mungos.animals.merge!{name => Animal.new age: age, name: name, breed: breed, toys: [], gender: gender.downcase.to_sym}
end

end
