class MyClass
  class << self
    def class_method
      puts "inside"
      @foo = 1
    end
  end

  def self.foo
    @foo
  end

  def foo
    @foo
  end
end

def MyClass.class_method_2
  @foo = 2
  @bar = "abc"
end

foo = MyClass.new

puts foo

# puts MyClass.class_method

puts "hey": MyClass.foo

puts foo.foo

puts MyClass.class_method_2
puts MyClass.foo 
puts foo.class_method