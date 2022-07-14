class MyList
  include MyEnumerable
  
  def initialize(*members)
      @list = members
  end
  
  def each
      @list.each { |item| yield item }
  end
end