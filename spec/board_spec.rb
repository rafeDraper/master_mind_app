# frozen_string_literal: true

require './models/board_model'

RSpec.describe Board do
  it 'Initialize the board' do
    new_game = Board.new
    expect(new_game).to eq(Class)
  end
end
