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
      puts "Oops! It looks like you already tried that letter... \nGo ahead and guess again!"
    else
      @guessed_letters << letter
      @word.length.times { |i| @hint[i] = letter if @word[i] == letter }
      @guesses -= 1
    end
  end

  def game_won
    @game_won = (@hint.join == @word)
  end
end

class Driver 
  def intro 
    puts '*********** WELCOME TO HANGMAN 1.0 ***********'
    puts "Player ONE, make sure Player TWO isn't looking\nand enter a SINGLE WORD for them to guess:"
    input = gets.chomp.downcase

    until is_word(input)
      puts 'Please only use letters A-Z in your word.'
      input = gets.chomp.downcase
    end
    
    puts "Great word!Now it's Player TWO's turn!"
    50.times {puts ""}
    puts "Now Player TWO, without cheating,\ntry and GUESS the word ONE letter at a time!"
    @game = Game.new(input)
  end 
  
  def is_letter(letter)
    alphabet = ('a'..'z').to_a
    (alphabet.include? letter) && (letter.length == 1)
  end

  def is_word(word)
    word.length.times do |i|
      if !is_letter(word[i])
        return false
      end
    end
    return true
  end
  
  # After refactoring is_word method as shown below, program runs BETTER 
  # and does not allow for nil to be accepted as input for word...
  # However, RSpec will not run tests and returns `run`: undefined method 
  # `chomp` for nil:NilClass (NoMethodError)

  # def is_word(word)
  #   word.each_char { |char| return false if !is_letter(char) }
  #   !word.empty?
  # end

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