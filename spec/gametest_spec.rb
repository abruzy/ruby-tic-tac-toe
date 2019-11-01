# frozen_string_literal: true

require './lib/game.rb'
require './lib/player.rb'
require './lib/result.rb'

describe 'Result' do
  context 'when someone wins because of a horizontal alignment' do
    it 'returns the item that is aligned horizontally' do
      board = %w[X O O
                 O X O
                 X X X]
      expect(Result.check1(board)).to eql 'X'
    end
  end

  context 'when nothing is aligned horizontally' do
    it 'returns nil' do
      board = %w[X O O
                 O X O
                 X X O]
      expect(Result.check1(board).nil?).not_to be false
    end
  end

  context 'when someone wins because of a diagonal alignment' do
    it 'returns the item that is aligned diagonally' do
      board = %w[X O X
                 O X O
                 X X O]
      expect(Result.check2(board)).to eql 'X'
    end
  end

  context 'when there is no diagonal alignment' do
    it 'returns nil' do
      board = %w[X O X
                 O X O
                 X X O]
      expect(Result.check2(board).nil?).to be false
    end
  end

  context 'when someone wins because of a vertical alignment' do
    it 'returns the item that is aligned vertically' do
      board = %w[X O O
                 O X O
                 X X O]
      expect(Result.check3(board)).to eql 'O'
    end
  end

  context 'when there is no winner' do
    it 'returns nil' do
      board = %w[X O O
                 O X X
                 X X O]
      expect(Result.check3(board) || Result.check2(board) || Result.check1(board)).to be nil
    end
  end
end

describe 'GameOver' do
  context "after every player's turn" do
    it 'ends the game if the player has won by returning true' do
      player = Player.new('Ade', 'X')
      board = ['X', ' ', 'O',
               'O', 'X', 'O',
               'O', ' ', 'X']
      expect(GameOver.check(board, player)).to be true
    end
  end
    context "after every player's turn" do
        it 'continues the game if player has not won by returning false' do
          player = Player.new('Ade', 'X')
          board = ['X', ' ', 'O',
                   'O', 'X', 'X',
                   'O', ' ', 'O']
          expect(GameOver.check(board, player)).to be false
        end
    end
end
