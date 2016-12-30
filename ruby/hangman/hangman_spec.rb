require_relative 'hangman'

describe Game do
  let(:game) { Game.new('test') }

  it "displays underscores for each letter of word" do
    expect(game.current_state).to eq ["_","_","_","_"]
  end

  it "displays a correctly guessed letter in the appropriate underscore" do
  	game.guess('s')
    expect(game.current_state).to eq ["_","_","s","_"]
  end

  it "checks if input letter is found in word" do
    expect(game.guess('t')).to eq true
    expect(game.guess('q')).to eq false
  end
  
  it "limits input to a single letter (A-Z)" do
    expect(game.guess('abc')).to eq false
    expect(game.guess('tes')).to eq false
    expect(game.guess('3')).to eq false
  end

end