class Game
  attr_reader :guesses, :hint, :game_won
  attr_accessor :word

  def initialize(word)
    @word = word
    @guesses = word.length + 3
    @hint = Array.new(word.length) { "_" }
    @guessed_letters = []
    @game_won = false
    end
  
  def guess(letter)
    if @guessed_letters.include? letter
      puts 'How\'s about you try a different letter, wise guy!'
    else
      @guessed_letters << letter
      @word.length.times { |i| @hint[i] = letter if @word[i] == letter } if @word.include? letter
      @guesses -= 1
    end
  end

  def game_won
    @game_won = (@hint.join == @word)
  end
end

class Driver 
  def intro 
    puts '*********** WELCOME TO HANGMAN 1.0 *************'
    puts 'Player ONE enter a word for Player TWO to guess:'
    input = gets.chomp.downcase

    until is_word(input)
      puts 'Please only use letters A-Z in your word.'
      input = gets.chomp.downcase
    end
    
    puts "Great word!\nNow Player TWO, without cheating,\ntry and GUESS the word ONE letter at a time!"
    @game = Game.new(input)
  end 
  
  def is_letter(letter)
    alphabet = ('a'..'z').to_a
    (alphabet.include? letter) && (letter.length == 1)
  end

  def is_word(word)
    word.each_char { |char| return false if not is_letter(char) }
    !word.empty?
  end

  def run 
    intro 
    until @game.guesses == 0 || @game.game_won
      puts 'Hint: ' + @game.hint.join(' ')
      puts 'Guesses remaining: ' + @game.guesses.to_s
      puts 'Enter letter:'
      current_guess = gets.chomp.downcase

      until is_letter(current_guess)
        puts 'Oops! Please be sure to guess with a SINGLE letter, A-Z:'
        current_guess = gets.chomp.downcase
      end

      @game.guess(current_guess)

      if @game.game_won
        puts "Huzzah! '#{@game.word.upcase}' is correct! Hooray!\nYou WON!!! Now switch players and PLAY AGAIN!"
        break
      end
    end
    
    if !@game.game_won
      puts "GAMEOVER!!!\nAww, too bad! You ran out of guesses...\nThe word was: '#{@game.word.upcase}'\nBetter luck next time!"
      puts hanged
    end
  end

  def hanged 
    hanged = <<HANG
 +---+-
 |   |
 |   0
 |   |\\
 |   /\\
-+----------
HANG
  end
end

Driver.new.run