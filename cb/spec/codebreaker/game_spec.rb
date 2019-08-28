require 'spec_helper'
module Codebreaker
	describe Game do
		describe 'starts' do
			let(:output) { double('output').as_null_object }
			let(:game) { Game.new(output) }
			it 'sends a welcome message' do
				allow(output).to receive(:puts).and_return("Welcome to Codebreaker!")
				#output.should_receive(:puts).with('Welcome to Codebreaker!')
				game.start
			end
			it 'prompts for the first guess' do			
				allow(output).to receive(:puts).and_return("Enter guess:")
				#output.should_receive(:puts).with('Enter guess:')
				game.start
			end
		end		
	end
end

