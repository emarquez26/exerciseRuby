result=class A
  def initialize
    @a = 11
    @@a = 22
    a = 33
  end
  @a = 1
  @@a = 2
  a = 3
end
puts A.instance_eval { @a }
puts A.class_variable_get(:@@a)
puts result
v=A.new
puts v.instance_eval { @a }
puts A.class_variable_get(:@@a)
puts A.new.send(:initialize)
gets()