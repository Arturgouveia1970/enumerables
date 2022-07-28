require_relative './my_enumerables'

class MyList 
include MyEnumerable

def initialize(*list)
    @list = list
  end

def each(&block)
    @list.each(&block)
end
end

list = MyList.new(1, 2, 3, 4)

p(list.all? { |e| e < 5 })

p(list.all? { |e| e > 5 })

p(list.any? { |e| e == 2 })

p(list.any? { |e| e == 5 })

p(list.filter { |e| e.even? })





list.all? { |e| e > 5 }

list.any? { |e| e == 2 }

list.any? { |e| e == 5 }

list.filter(&:even?)
