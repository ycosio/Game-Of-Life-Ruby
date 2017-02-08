require_relative 'board'

class Player
  attr_accessor :game
  def initialize
    puts "Columns: "
    @col = gets.to_i
    puts "Rows: "
    @row = gets.to_i
    @game = Board.new(@col,@row)
  end

  def draw
    @row.times do |row|
      @col.times do |col|
       print @game.board[row][col].life ? "1" : "0"
      end
      print "\n"
    end
  end


end
