require './question'
require './player'
require './game'

game = Game.new
game.start


if (Player.numLives == 0) {
  game.finished
}
