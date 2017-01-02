require_relative 'hangman'

describe Game do
  let(:game) { Game.new('test') }

  it "displays underscores for each letter of the word" do
    expect(game.hint).to eq ["_","_","_","_"]
  end

  it "displays a correctly guessed letter in the appropriate underscore" do
    game.guess('s')
    expect(game.hint).to eq ["_","_","s","_"]
  end

  it "checks to see if the game is over or not" do
    expect(game.gameover).to eq false
    game.guess('t')
    game.guess('e')
    game.guess('s')
    expect(game.gameover).to eq true
  end

end