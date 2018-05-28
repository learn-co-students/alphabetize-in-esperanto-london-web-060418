 ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  arr.sort_by { |phrase| phrase.chars.map {|char| ESPERANTO_ALPHABET.index(char) }}
end

# ["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"]
