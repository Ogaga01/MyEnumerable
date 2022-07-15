module MyEnumerable
  def all?
    ans = true
    each do |i|
      ans = false unless yield i
    end
    ans
  end

  def any?
    ans = false
    each do |i|
      ans = true if yield i
    end
    ans
  end

  def filter
    arr = []
    each { |n| arr.push(n) if yield(n) }
    arr
  end
end
