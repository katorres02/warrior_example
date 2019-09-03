require_relative './warrior'
warrior = Warrior.new
puts warrior.experience
puts warrior.level
warrior.battle(101) # puts error
warrior.battle(1)
warrior.battle(1)
warrior.battle(1)
warrior.battle(1)
warrior.battle(1)
warrior.battle(1)
warrior.battle(1)
warrior.battle(1)
warrior.battle(1)
warrior.battle(1)
puts warrior.experience
puts warrior.level
warrior.battle(1)
puts warrior.experience
puts warrior.level
warrior.battle(10) # me deja en nivel 14
puts warrior.experience
puts warrior.level
warrior.battle(12)
puts warrior.experience
puts warrior.level
