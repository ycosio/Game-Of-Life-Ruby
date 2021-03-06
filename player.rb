require_relative 'board'

class Player
  attr_accessor :game
  def initialize
    @game = Board.new
  end

  def draw
    @game.row.times do |row|
      @game.col.times do |col|
       print @game.board[row][col].life  == 0 ? " . ": " O "
      end
      print "\n"
    end
  end

  def next_generation
    temporal_board = @game
    @game.row.times do |row|
      @game.col.times do |col|
        temporal_board.board[row][col].life = kill_or_revive(@game.board[row][col].life,@game.neighbors(row,col).inject(:+))
      end
    end
    draw
    @game = temporal_board
    return
  end

  def kill_or_revive(cell,neighbors)
    if neighbors < 2 and cell == 1
      return 0
    elsif (neighbors == 2 or neighbors == 3) and cell ==1
      return 1
    elsif neighbors > 3 and cell == 1
      return 0
    elsif neighbors >=3 and cell == 0
      return 1
    else
      return 0
    end
  end


end
