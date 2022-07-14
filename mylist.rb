require_relative 'enumerable'

class MyList
  include MyEnumerable
  
  def initialize(*members)
      @list = members
  end
  
  def each
      @list.each { |item| yield item }
  end
end

list = MyList.new(1, 2, 3, 4)
list.all? {|e| e < 5}
list.all? {|e| e > 5}
list.any? {|e| e == 2}
list.any? {|e| e == 5}
list.filter {|e| e.even?}