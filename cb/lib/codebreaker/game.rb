#good
module Codebreaker
	class Game
		def initialize(output)
			@output = output
		end
		def start(secret)
			@secret=secret
			@output.puts 'Welcome to Codebreaker!'
			@output.puts 'Enter guess:'
		end
		def guess(guess)
			@output.puts find_matches(guess)
		end
		private
		def find_matches(guess)
			mark=''
			mark_minus=''
		  guess.chars.map.with_index { |s, i|
		  	if exact_match?(guess, i)
					mark << '+'
				elsif number_match?(guess, s)	
					mark_minus << '-'
				end
		  }				
		  mark << mark_minus
		end
	  def exact_match?(guess, index)		
			guess[index] == @secret[index]
		end
		def number_match?(guess, string)		
			@secret.include?(string)
		end
	end
end