class Entity
  attr_accessor :name, :age, :gender

  def initialize(options={})
    @name = options[:name]
    @age = options[:age]
    @gender = options[:gender]
  end


end