class RspecGreeter 
	def greet
		"Hello Rspec"
	end
end

describe 'Rspec Greeter' do
	it "Should Say 'Hello Rspec' when it receives the greet() message" do
		greeter = RspecGreeter.new
		greeting = greeter.greet
		greeting.should == "Hello Rspec"
	end
end
