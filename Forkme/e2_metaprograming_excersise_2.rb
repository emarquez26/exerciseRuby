class I
  def like arg
    puts "%s %s %s" % [self.class, self.class.instance_methods(false), arg]
  end
end
c, m, arg = gets.split
<<<<<<< HEAD
print "#{I.new.class} #{I.instance_methods(true).first()} #{arg}\n"
=======
print "#{I.new.class} #{I.instance_methods(true).first()} #{arg}\n"
>>>>>>> 22e3e77daad34faf8ed7205aae6093965d3de9f2
