# frozen_string_literal: true

# class for mastermind game
class Mastermind
  attr_accessor :player_role

  def initialize(player_role)
    @player_role = player_role
    @lives = 10
  end

  def generate_code(user_input = 0)
    user_input_array = user_input.to_s.chars.map(&:to_i)
    if user_input.zero?
      Array.new(4) { rand(6) }
    else
      user_input_array
    end
  end
end
