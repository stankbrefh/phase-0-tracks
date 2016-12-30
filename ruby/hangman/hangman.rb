class Game
  attr_reader :guesses, :current_state, :gameover
  attr_accessor :word

  def initialize(word)
    @word = word
    @guesses = word.length
    @current_state = Array.new(word.length) { |i| "_" }
    @wrong_letters = []
    @gameover = false
  end
  
  def guess(letter)
    correct = false
    if @wrong_letters.include? letter
      puts 'How\'s about you try a different letter, wise guy!'
    else
      @wrong_letters << letter
        if @word.include? letter
          @word.length.times do |i|
            if @word[i] == letter
              @current_state[i] = letter
              correct = true
            end
          end
        end
        @guesses -= 1
    end
    return correct
  end

  def gameover
    @gameover = (@current_state.join == @word)
  end

end

def is_letter(letter)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  if not letter.empty?
    return (alphabet.include? letter[0]) && (letter.length == 1)
  else
    return false
  end
end

def is_word(word)
  word = word.downcase
  word.length.times do |i|
    if not is_letter(word[i])
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

if not game.gameover
  puts 'You\'re a loser and nobody likes you!'
  puts hanged
end