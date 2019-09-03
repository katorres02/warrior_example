class Battle

  def initialize(warrior_level, enemy_level)
    @warrior_level = warrior_level
    @enemy_level   = enemy_level

  end

  def start
    return "Invalid Enemy level" if @enemy_level > 100 || @enemy_level < 1
    Rule.calculate(@warrior_level, @enemy_level)
  end

  def message
    'Easy figth'
  end

end

class Rule

  def self.calculate(warrior_level, enemy_level)
    result = nil
    result ||= same_level(warrior_level, enemy_level)
    result ||= one_level_lower(warrior_level, enemy_level)
    result ||= two_level_lower(warrior_level, enemy_level)
    result ||= higher_enemy(warrior_level, enemy_level)
  end

  def self.same_level(warrior_level, enemy_level)
    10 if warrior_level == enemy_level
  end

  def self.one_level_lower(warrior_level, enemy_level)
    5 if warrior_level == (enemy_level + 1)
  end

  def self.two_level_lower(warrior_level, enemy_level)
    0 if warrior_level == (enemy_level + 2)
  end

  def self.higher_enemy(warrior_level, enemy_level)
    diff = warrior_level - enemy_level
    diff * diff * 20
  end
end

