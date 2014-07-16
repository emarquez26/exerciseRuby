require "rubygems"
require "highline/import"

class Morse
	def morse
		choices = %w{texto-morse morse-texto}
		say("Por favor elija la accion a realixar:")
		say(choices.map { |c| "  #{c}\n" }.join)
		puts()
		case ask("-> ", choices)

		when "texto-morse"
			require_relative 'textmorse.rb'
		when "morse-texto"
			require_relative 'morsetext.rb'
		end
	end
end
obj=Morse.new
obj.morse