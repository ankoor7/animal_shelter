class Shelter
  attr_accessor :clients, :animals




def initialize(options={})
  @clients = options[:clients]
  @animals = options[:animals]
end

end
