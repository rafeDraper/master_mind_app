# frozen_string_literal: true

# class for mastermind game
require_relative 'board_model'
class Mastermind
  attr_accessor :player_role, :lives, :board
  attr_reader :secret_code

  def initialize(player_role)
    @player_role = player_role
    @lives = 10
    @secret_code = generate_code
    @board = Board.new
    @guess = guess
  end

  def generate_code(user_input = 0)
    user_input_array = user_input.to_s.chars.map(&:to_i)
    if user_input.zero?
      Array.new(4) { rand(6) }
    else
      user_input_array
    end
  end

  def play
    # uses the actual code to crack
    
  end
  
end
