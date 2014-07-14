puts "Digite numero"
str = gets.chomp.to_s

chars = str.scan(/./)

b=chars.each do |char|
	case char.to_i
	    when 0
		puts" __" ,"|  |","|  |"," -- "
        when 1
	    puts "|","|"
        when 2
	    puts " __", " __|", "|__" 
	    when 3
	        puts "__","__|","__|"
	    when 4
		    puts "|  |","|__|","   |","   |"
		when 5
			puts " __","|__"," __|"
		when 6
			puts " __","|__","|__|"
		when 7
			puts "__" ,"__|","  |"
		when 8
			puts " __" ,"|__|","|__|"
		when 9
			puts " __" ,"|__|","   |"
    end
end