class OOutput
	def messages
		@messages ||= []
	end
	def puts(message)
		messages << message
	end
end
def o_output
	@o_output ||= OOutput.new
end
Given("I am not yet playing") do
end
When("I start a new game") do
	game=Codebreaker::Game.new(o_output)
	game.start('1234')
end
Then("I should see {string}") do |string|
	o_output.messages.should include(string)
end

Given("the secret code is {string}") do |string|
  @game = Codebreaker::Game.new(o_output)
  @game.start(string)
end

When("I guess {string}") do |guess|
	@game.guess(guess)
end
 
Then("the mark should be {string}") do |string|
	o_output.messages.should include(string)
end


