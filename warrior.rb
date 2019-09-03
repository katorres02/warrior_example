require_relative './rank'
require_relative './battle'

class Warrior
  attr_accessor :level, :experience, :rank_level, :achievements

  def initialize(level = 1, experience = 100, rank_level = 'Pushover')
    @rank = Rank.new
    @level      = level
    @experience = experience
    @rank_level = rank_level || @rank.options[0]
    @achievements = []

    validate_args
  end


  def battle(enemy_level)
    battle = Battle.new(@level, enemy_level)
    result = battle.start
    if result.class.name == 'String'
      puts result
    else
      @experience += result
      calculate_level
      puts battle.message
    end
  end

  private

  def calculate_level
    level = (@experience/100).to_i
    @level = level
    @rank_level = @rank.current_rank(@level)
  end

  def validate_args
    if @level > 100 || @level < 1
      return 'Level error'
    end

    if @experience < 100 || @experience > 1000
      return 'Experience error'
    end
  end
end
