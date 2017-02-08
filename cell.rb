class Cell
  attr_accessor :life
  def initialize
    @life = [true, false].sample
  end

end
