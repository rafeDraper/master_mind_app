# frozen_string_literal: true

# master mind board class
class Board
  attr_reader :decoding_board, :feedback_board, :pegs
  attr_accessor :guess

  def initialize
    # 6 colors of pegs available
    @pegs = 6
    # board rows, holes and complete board
    @decoding_board = Array.new(10) { Array.new(4) }
    @feedback_board = Array.new(10) { [] }
    @guess = Array.new(4)
  end
end
