# frozen_string_literal: true

require './models/mastermind_model'

RSpec.describe Mastermind do
  
  context 'initializing' do
    it 'should let the user chose a role' do
      codemaker = Mastermind.new('codemaker')
      codebreaker = Mastermind.new('codebreaker')
      expect(codemaker).to have_attributes(player_role: 'codemaker')
      expect(codebreaker).to have_attributes(player_role: 'codebreaker')
    end

    it 'should generate a user code' do
      game = Mastermind.new('codemaker')
      code = [1, 1, 2, 3]
      expect(game.generate_code(1123)).to eq(code)
    end

    it 'should generate a random code when empty' do
      game = Mastermind.new('codebreaker')
      expect(game.generate_code.count).to equal(4)
    end
  end
end
