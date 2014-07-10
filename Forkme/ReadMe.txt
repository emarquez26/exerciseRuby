e2_metaprograming_excersise_1

Could you get the values from outside the class A ?
class A
  def initialize
    @a = 11
    @@a = 22
    a = 33
  end
  @a = 1
  @@a = 2
  a = 3
end
este ejercico trata de mostar las variables fuera de la clase en las que se encuentran quedando de la siguente manera el resultado al momento de ejecutar el c—digo:
1
2
3
11
22
33
-se puede ejecutar poniendo: ruby e2_metaprograming_excersise_1.rb

e2_metaprograming_excersise_1

Add your code to display 'I like metaprogramming.'
class I
  def like arg
    puts "%s %s %s" % [self.class, self.class.instance_methods(false), arg]
  end
end

c, m, arg = gets.split  # input 'I like metaprogramming.'
