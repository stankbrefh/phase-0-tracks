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

  it "checks to see if the game is won or not" do
    expect(game.game_won).to eq false
    game.guess('t')
    game.guess('e')
    game.guess('s')
    expect(game.game_won).to eq true
  end

  it "decrements the number of guesses remaining after each guess" do
    game.guess('q')
    expect(game.guesses).to eq 6
    game.guess('e')
    expect(game.guesses).to eq 5
  end

end

describe Driver do
  let(:driver) { Driver.new }

  it "determines if input is single letter, A-Z" do
    expect(driver.is_letter('a')).to eq true
    expect(driver.is_letter(' ')).to eq false
    expect(driver.is_letter('abc')).to eq false
  end

end