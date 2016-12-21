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
    if @wrong_letters.include? letter
      puts 'How\'s about you try a different letter, wise guy!'
    else
      @wrong_letters << letter
        if @word.include? letter
          @word.length.times do |i|
            if @word[i] == letter
              @current_state[i] = letter
            end
          end
        end
        @guesses -= 1
    end
  end

  def gameover?
    @gameover = (@current_state.join == @word)
  end
end

puts 'Enter word:'
input = gets.chomp
game = Game.new(input)

until game.guesses == 0 || game.gameover?
  puts 'Attempts remaining: ' + game.guesses.to_s
  puts 'Enter letter:'
  current_guess = gets.chomp
  game.guess(current_guess)
  puts 'Status: ' + game.current_state.join(' ')
  if game.gameover?
    puts 'GGWP'
    break
  end
end

if not game.gameover?
  puts 'You\'re a loser and nobody likes you!'
end