class Animal < Entity
  attr_accessor :toys, :breed

  def new
    @toys = []
    @breed = ''
  end

  def initialize(options={})
    @toys = options[:toys]
    @breed = options[:breed]
   super
  end

  def to_s
    "#{name}, a #{gender} #{breed}. Favourite toys are #{toys.join(', ')}"
  end

end