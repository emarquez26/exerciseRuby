class Display
	def create
		puts "Digite numero"
		str = gets.chomp.to_s

		chars = str.scan(/./)
		@rsp=""; @rsp2=""; @rsp3=""
		b=chars.each do |char|
			case char.to_i
			    when 0
					@rsp+=" --  "
		        when 1
			    	@rsp+= "  "
		        when 2
			    	@rsp+=" __ " 
			    when 3
			        @rsp+= " __  "
			    when 4
				    @rsp+= "     "
				when 5
					@rsp+=" __  "
				when 6
					@rsp+=" __  "
				when 7
					@rsp+= "  __  "
				when 8
					@rsp+= " --  "
				when 9
					@rsp+="  __  "
		    end
		    case char.to_i
			    when 0
					@rsp2+="|  | "
		        when 1
			    	@rsp2+= "| "
		        when 2
			    	@rsp2+=" __|"
			    when 3
			        @rsp2+=" __| "
			    when 4
				    @rsp2+="|__| "
				when 5
					@rsp2+="|__  "
				when 6
					@rsp2+="|__  "
				when 7
					@rsp2+= "    | " 
				when 8
					@rsp2+="|__| "
				when 9
					@rsp2+= " |__| "
		    end
		    case char.to_i
			    when 0
					@rsp3+=" --  "
		        when 1
			    	@rsp3+= "| "
		        when 2
			    	@rsp3+= "|__ " 
			    when 3
			        @rsp3+=" __| "
			    when 4
				    @rsp3+="   | "
				when 5
					@rsp3+=" __| "
				when 6
					@rsp3+="|__| "
				when 7
					@rsp3+= "    | "
				when 8
					@rsp3+="|__| "
				when 9
					@rsp3+="    | "
		    end
		end
	end
end
obj=Display.new
obj.create
puts obj.instance_eval { @rsp }
puts obj.instance_eval { @rsp2 }
puts obj.instance_eval { @rsp3 }
puts()