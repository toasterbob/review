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
