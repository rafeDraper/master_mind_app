# frozen_string_literal: true

# class for mastermind game
class Mastermind
  def initialize
    @player_role = player_role
    @lives = 0
    @player_code = []
  end

  def generate_code
    code = [rand(9), rand(9), rand(9), rand(9)]
    code.join('')
  end

  def compare_code; end
end
