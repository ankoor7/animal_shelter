class Client < Entity
  attr_accessor :kids, :pets

  def new
    @kids = {}
    @pets = {}
  end

  def initialize(options={})
    @kids = options[:kids]
    @pets = options[:pets]
   super
  end

#  def to_s
#    "#{name} who owns #{pets.keys.empty? ? 'no pets' : pets.keys.join(', ') }."
#  end

  def list_pets
    puts "Your pets are,"
    @pets.each { |k,v|
    puts k
   }
  end


end