class Rank
  attr_reader :options

  def initialize
    @options = ["Pushover", "Novice", "Fighter", "Warrior", "Veteran", "Sage", "Elite", "Conqueror", "Champion", "Master", "Greatest"]
  end

  def current_rank(warrior_level)
    @options[(warrior_level / 10)]
  end
end
