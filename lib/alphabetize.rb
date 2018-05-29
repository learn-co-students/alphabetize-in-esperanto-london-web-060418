require "pry"

ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  # code here
  split_array = ESPERANTO_ALPHABET.split("")
  sortedArray = arr.sort { |a, b| a.split("").map { |char| split_array.find_index(char) } <=> b.split("").map { |char| split_array.find_index(char) } }
  return sortedArray
end
