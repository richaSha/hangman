class Hangman
  attr_accessor :player_name, :life, :words
  def initialize(player_name)
    @player_name = player_name
    @life = 5
    @words = ["water", "apple", "mouse", "epicodus", "phone"]
  end

  def find_random
    Random.new.rand(0..4)
  end

  def find_word
    @words[find_random]
  end

  def lose_life
    @life = @life - 1
  end

end
