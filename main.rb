require 'pry'

require_relative 'entity'
require_relative 'client'
require_relative 'animal'
require_relative 'shelter'

st_mungos = Shelter.new clients: {}, animals: {}

kid1 = Entity.new
kid2 = Entity.new

m=Client.new age: 25, name: "michael", kids: [kid1, kid2]
a = Client.new age: 30, name: 'ankoor', gender: :male

pet = Animal.new age: 3, name: 'Dog', breed: "Border Collie", toys: ['squeaky toy', 'stuffed elepant'], gender: :male

[m,a].each { |person|
#  st_mungos.clients[person.name] = person
}

binding.pry