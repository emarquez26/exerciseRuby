Nueva_class = Class.new do |string|
	define_method(:tr_vowel) { tr 'aeiou', '*'}

	define_method(:tr_vowel) do |str|
		str.tr 'aeiou', '*'
	end
end
puts Nueva_class.new.tr_vowel("edwin")