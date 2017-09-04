class A
  private
  def not_so_private_method
    puts "Hello World"
  end
end

if __FILE__ == $PROGRAM_NAME
  foo = A.new
  foo.send :not_so_private_method #Hello World
end


# In Ruby, these distinctions are just advice from one programmer to another. 
# Non-public methods are a way of saying "I reserve the right to change this;
# don't depend on it." But you still get the sharp scissors of send and can
# call any method you like.
