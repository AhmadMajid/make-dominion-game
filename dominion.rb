ahmad_viable = ["Bank", "Ambassador", "Bazaar", "Caravan", "City", "Council Room", "Counting House", "Explorer", "Festival", "Fishing Village", "Gardens", "Ghost Ship", "Goons", "Harem", "Hoard", "Ironworks", "Island", "Laboratory", "Library", "Loan", "Lookout", "Market", "Militia", "Minion", "Moneylender", "Monument", "Mountebank", "Nobles", "Peddler", "Quarry", "Rabble", "Royal Seal", "Sea Hag", "Shanty Town", "Smithy", "Smugglers", "Swindler", "Torturer", "Treasury", "Upgrade", "Vault", "Venture", "Warehouse", "Watchtower", "Wharf", "Witch", "Wishing Well", "Cellar", "Lighthouse", "Moat", "Pawn", "Pearl Diver"]

josh_viable = ["Bank", "Ambassador", "Bazaar", "Caravan", "City", "Council Room", "Counting House", "Explorer", "Festival", "Fishing Village", "Gardens", "Ghost Ship", "Goons", "Harem", "Hoard", "Ironworks", "Island", "Laboratory", "Library", "Loan", "Lookout", "Market", "Militia", "Minion", "Moneylender", "Monument", "Mountebank", "Nobles", "Peddler", "Quarry", "Rabble", "Royal Seal", "Sea Hag", "Shanty Town", "Smithy", "Smugglers", "Swindler", "Torturer", "Treasury", "Upgrade", "Vault", "Venture", "Warehouse", "Watchtower", "Wharf", "Witch", "Wishing Well", "Masquerade", "Harbinger", "Artisan", "Bishop", "Bridge", "Conspirator", "Courtier", "Diplomat", "Forge", "Grand Market", "King's Court", "Merchant", "Mine", "Haven", "Mill", "Cellar", "Lighthouse", "Moat", "Pawn", "Pearl Diver", "Chapel", "Courtyard", "Lurker", "Mining Village"]
josh_banned_clause = ["Ambassador", "Ghost Ship", "Goons", "Masquerade", "Militia"]

josh_game = josh_viable.sample(9)

final_card = josh_viable - josh_banned_clause - josh_game
has_a_moat = josh_viable - josh_game

if josh_game.include?("Moat")
  josh_game << has_a_moat.sample(1)
elsif (josh_game & josh_banned_clause).size > 0
  josh_game << "Moat"
else
  josh_game << final_card.sample(1)
end

puts "Would you like an Ahmad or a Josh style game?"

answer = gets.chomp

answer.downcase

if answer == "ahmad"
  puts ahmad_viable.sample(10)
elsif answer == "josh"
  puts josh_game
elsif answer == "chris"
  puts "I mean....sit back and watch I guess?"
  sleep(3)
  puts "I'm just kidding man, you can play if you want to"
  sleep(6)
  puts "What a surprise"
else
  puts "You have to say Josh or Ahmad ffs"
end
