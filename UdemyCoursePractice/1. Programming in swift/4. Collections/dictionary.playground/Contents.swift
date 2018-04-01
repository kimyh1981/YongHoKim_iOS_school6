var nameAndScore: [String: Int] = ["Anna": 2, "Brian": 2, "Craig": 4, "Donna": 6]
//var nameAndScore2: Dictionary<String, Int> = ["Anna": 2, "Brian": 2, "Craig": 4, "Donna": 6]

print(nameAndScore)
//print(nameAndScore2)

nameAndScore["Anna"]
nameAndScore["Graig"]

nameAndScore.isEmpty
nameAndScore.count

nameAndScore["Greg"] = 11
nameAndScore["Kim"] = 12
print(nameAndScore)

nameAndScore.count

for (player, score) in nameAndScore {
    print("\(player) has a score of \(score)")
}

for player in nameAndScore.keys {
    print("\(player)")
}

for score in nameAndScore.values {
    print("\(score)")
}

nameAndScore.first


