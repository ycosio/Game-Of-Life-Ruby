require_relative 'cell'

class Board
  attr_accessor :board
  attr_reader :row , :col

  def initialize
    puts "Colums: "
    @col = gets.to_i
    puts "Rows: "
    @row = gets.to_i
    @board = Array.new(@row) {Array.new(@col) {Cell.new} }
  end

  def neighbors(row,col)
    neighbors = []
    3.times do |i|
      r = row - (i-1)
      3.times do |j|
        c = col - (j-1)
        neighbors << @board[r][c].life if  r >= 0 and c >= 0 and r <= @row-1 and c <= @col-1 and @board[r][c] != @board[row][col]
      end
    end

    return neighbors
  end

end
