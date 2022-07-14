module MyEnumerable
  def all?
    ans = true
    each do |i|
      ans = false unless yield i
    end
    puts ans
  end

  def any?
    ans = false
    each do |i|
      ans = true if yield i
    end
    puts ans
  end

  def filter
    arr = []
    each { |n| arr.push(n) if yield(n) }
    puts arr
  end
end
