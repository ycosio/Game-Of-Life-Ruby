require_relative 'player'

game = Player.new
while true do
  system 'clear'
  game.next_generation
  sleep(14.0/24.0)
end
