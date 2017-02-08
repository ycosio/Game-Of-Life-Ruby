require_relative 'cell'

class Board
  attr_accessor :board

  def initialize(col,row)
    @board = Array.new(row) {Array.new(col) {Cell.new} }
  end

  def neighbors(row,col)
    neighbors = []
    3.times do |i|
      3.times do |j|
        r = row - (i-1)
        c = col - (j-1)
        neighbors << board[r][c] if r >= 0 and c >= 0 and !board[r][c].nil? and board[r][c] != board[row][col]
      end
    end

    return neighbors
  end

end
