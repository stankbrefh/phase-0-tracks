class Game
  attr_reader :guesses, :current_state, :gameover
  attr_accessor :word

  def initialize(word)
    @word = word
    @guesses = word.length + 3
    @current_state = Array.new(word.length) { "_" }
    @wrong_letters = []
    @gameover = false
  end
  
  def guess(letter)
    if @wrong_letters.include? letter
      puts 'How\'s about you try a different letter, wise guy!'
    else
      @wrong_letters << letter
      @word.length.times { |i| @current_state[i] = letter if @word[i] == letter } if @word.include? letter
      @guesses -= 1
    end
  end

  def gameover
    @gameover = (@current_state.join == @word)
  end
end

def is_letter(letter)
  alphabet = ('a'..'z').to_a
  (alphabet.include? letter[0]) && (letter.length == 1) if !letter.empty?
end

def is_word(word)
  word.length.times do |i|
    if !is_letter(word[i])
      return false
    end
  end
  return true
end

hanged = <<HANG
+---+-
|   |
|   0
|   |\\
|   /\\
-+----------
HANG

puts 'Enter word:'
input = gets.chomp.downcase

until is_word(input)
  puts 'Please only use letters A-Z in your word.'
  input = gets.chomp.downcase
end

game = Game.new(input)

until game.guesses == 0 || game.gameover
  puts 'Attempts remaining: ' + game.guesses.to_s
  puts 'Enter letter:'
  current_guess = gets.chomp.downcase

  until is_letter(current_guess)
    puts 'Please ONLY guess with a single letter: A-Z'
    current_guess = gets.chomp.downcase
  end

  game.guess(current_guess)
  puts 'Status: ' + game.current_state.join(' ').dump

  if game.gameover
    puts 'GGWP'
    break
  end
end

if !game.gameover
  puts 'You\'re a loser and nobody likes you!'
  puts hanged
end