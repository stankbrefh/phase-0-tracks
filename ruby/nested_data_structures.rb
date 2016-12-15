# Nested data structure
hearthstone_classes = {
  druid: {
    hero: 'Malfurion',
    power: 'Shapeshift',
    legends: [
      'Cenarius',
      'Malorne',
      'Aviana',
      'Fandral Staghelm',
      'Kun the Forgotten King'
    ]
  },
  hunter: {
    hero: 'Rexxar',
    power: 'Steady Shot',
    legends: [
      'King Krush',
      'Acidmaw',
      'Dreadscale',
      'Gahz\'rilla',
      'Princess Huhuran',
      'Knuckles'
    ]
  },
  mage: {
    hero: 'Jana',
    power: 'Fireblast',
    legends: [
      'Archmage Antonidas',
      'Flame Leviathan',
      'Rhonin',
      'Anomalus',
      'Inkmaster Solia'
    ]
  },
  paladin: {
  	hero: 'Luther',
  	power: 'Reinforce',
  	legends: [
      'Tirion Fordring',
      'Bolvar Fordragon',
      'Eadric the Pure',
      'Ragnaros, Lightlord',
      'Wickerflame Burnbristle'
    ]
  },
  priest: {
    hero: 'Anduin',
    power: 'Lesser Heal',
    legends: [
      'Prophet Velen',
      'Vol\'jin',
      'Confessor Paletress',
      'Herald Volazj',
      'Raza the Chained'
    ]
  },
  rogue: {
    hero: 'Valeera',
    power: 'Dagger Mastery',
    legends: [
      'Edwin VanCleef',
      'Trade Prince Gallywix',
      'Anub\'arak',
      'Xaril, Poisoned Mind',
      'Shaku, the Collector'
    ]
  },
  shaman: {
    hero: 'Thrall',
    power: 'Totemic Call',
    legends: [
      'Al\'Akir the Windlord',
      'Neptulon',
      'The Mistcaller',
      'Hallazeal the Ascended',
      'White Eyes'
    ]
  },
  warlock: {
    hero: 'Guldan',
    power: 'Life Tap',
    legends: [
      'Lord Jaraxxus',
      'Mal\'Ganis',
      'Wilfred Fizzlebang',
      'Cho\'gall',
      'Krul the Unshackled'
    ]
  },
  warrior: {
    hero: 'Garrosh Hellscream',
    power: 'Armor Up!',
    legends: [
      'Grommash Hellscream',
      'Iron Juggernaut',
      'Varian Wrynn',
      'Malkorok',
      'Hobart Grapplehammer'
    ]
  }
}

# Display the value of druid's hero
puts hearthstone_classes[:druid][:hero]

# Display priest's first legend
puts hearthstone_classes[:priest][:legends][0]

# Display all key values stored in mage and capitalizes each
hearthstone_classes[:mage].each {|key, value| puts "#{key.capitalize}: #{value}"}

# Display warrior's power
puts hearthstone_classes[:warrior][:power]

# Display a list of all classes and capitalizes each
hearthstone_classes.each do |key, value| 
  puts "#{key.capitalize}"
end

# Store the value of nested values into a new array
total_value = []
hearthstone_classes.each do |key, value| 
  value.each do |key2, value2|
    total_value << value2
  end
end

# Store only the legends from new array into new variable
legendaries = total_value.select.with_index{|_,i| (i+1) % 3 == 0}

# Display a list of ALL legends
puts legendaries