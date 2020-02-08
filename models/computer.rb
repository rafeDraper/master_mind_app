# frozen_string_literal: true

# Computer AI
class Computer < Codemaker
  def play
    # Any black feedback from previous guess?
    unless black_matches.empty?
      black_matches.each do |key, value|
        @board.decoding_board[@@current_row][key] = value
      end
    end

    # Any white feedback from previous guess?
    unless white_matches.empty?
      # Assign the colors to a temporary list
      temp = @@white_matches.dup
      white_matches.size.times do
        color = temp[rand(temp.size)]
        # First nil from board we assign a random color found in previous guess
        @board.decoding_board[@@current_row][@board.decoding_board[@@current_row].index(nil)] = color
        # Delete the color from the temporary list to avoid assigning it again
        temp.slice!(temp.index(color))
      end
    end

    # Complete the rest with random colors
    @board.holes.times do |i|
      if @board.decoding_board[@@current_row][i].nil?
        @board.decoding_board[@@current_row][i] = COLORS[rand(1..@board.pegs)]
      end
    end
  end

  def generate_pattern
    @board.holes.times { |i| @board.pattern[i] = COLORS[rand(1..@board.pegs)] }
  end
end
